import 'package:films_app/domain/auth/email_address.dart';
import 'package:dartz/dartz.dart';
import 'package:films_app/domain/auth/i_auth_facade.dart';
import 'package:films_app/domain/auth/user.dart';
import 'package:films_app/domain/core/failures.dart';
import 'package:films_app/domain/auth/password.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:films_app/domain/auth/user.dart';
import 'firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(this._firebaseAuth, this._googleSignIn);

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
      final emailAddressStr = emailAddress.getOrCrash();
      final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAddressStr.toString(), password: passwordStr.toString());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final emailAddressStr = emailAddress.getOrCrash();
      final passwordStr = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAddressStr.toString(), password: passwordStr.toString());
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found' || e.code == 'firebase_auth/user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try{
      final googleUser = await _googleSignIn.signIn();
    if (googleUser == null) return left(const AuthFailure.emailAlreadyInUse());
    final googleAuth = await googleUser.authentication;
    final authCredential = GoogleAuthProvider.credential(
        idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

    return _firebaseAuth.signInWithCredential(authCredential).then((r) => right(unit));
    } on PlatformException catch (_){
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Option<LocalUser>> getSignedInUser() async =>
      optionOf(_firebaseAuth.currentUser?.toDomain());

  @override
  Future<void> signOut() async {
    _googleSignIn.signOut();
    _firebaseAuth.signOut();
  }
    

}
