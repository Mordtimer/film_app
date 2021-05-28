import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:films_app/domain/films/film_failure.dart';
import 'package:films_app/domain/films/film.dart';
import 'package:dartz/dartz.dart';
import 'package:films_app/domain/films/i_film_repository.dart';
import 'package:films_app/infrastructure/films/film_dtos.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:films_app/infrastructure/core/firestore_helper.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IFilmRepository)
class FilmReposiory implements IFilmRepository {
  final FirebaseFirestore _firestore;

  FilmReposiory(this._firestore);
  @override
  Future<Either<FilmFailure, Unit>> create(Film film) async {
    try {
      final userDoc = await _firestore.userDocument();
      final filmDto = FilmItemDto.fromDomain(film);

      userDoc.filmCollection.doc(filmDto.id).set(filmDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('premission_denied'))
        return left(const FilmFailure.insufficientPremission());
      else {
        return left(const FilmFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FilmFailure, Unit>> delete(Film film) async {
    try {
      final userDoc = await _firestore.userDocument();
      final filmDto = FilmItemDto.fromDomain(film);

      userDoc.filmCollection.doc(filmDto.id).delete();
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('premission_denied'))
        return left(const FilmFailure.insufficientPremission());
      else if (e.message!.contains('premission_denied')) {
        return left(const FilmFailure.notFound());
      } else {
        return left(const FilmFailure.unexpected());
      }
    }
  }

  @override
  Future<Either<FilmFailure, Unit>> update(Film film) async {
    try {
      final userDoc = await _firestore.userDocument();
      final filmDto = FilmItemDto.fromDomain(film);

      userDoc.filmCollection.doc(filmDto.id).update(filmDto.toJson());
      return right(unit);
    } on PlatformException catch (e) {
      if (e.message!.contains('premission_denied'))
        return left(const FilmFailure.insufficientPremission());
      else if (e.message!.contains('premission_denied')) {
        return left(const FilmFailure.notFound());
      } else {
        return left(const FilmFailure.unexpected());
      }
    }
  }

  @override
  Stream<Either<FilmFailure, List<Film>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
  
 
    yield* userDoc.filmCollection.snapshots().map(
          (snapshot) => right<FilmFailure, List<Film>>(
            snapshot.docs
                            .map((doc) => FilmItemDto.fromFirestore(
                        doc as QueryDocumentSnapshot<Map<String, dynamic>>)
                    .toDomain())
                .toList(),
          ),
        )
        .onErrorReturnWith((error, stackTrace) {
      if (error is PlatformException &&
          error.message!.contains('premission-denided')) {
        return left(FilmFailure.insufficientPremission());
      } else {
        return left(const FilmFailure.unexpected());
      }
    });
  }
}
