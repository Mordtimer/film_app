import 'package:dartz/dartz.dart';
import 'package:films_app/domain/auth/password.dart';
import 'package:films_app/domain/auth/user.dart';
import 'package:films_app/domain/core/failures.dart';


import 'email_address.dart';

abstract class IAuthFacade {

  Future<Option<LocalUser>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}