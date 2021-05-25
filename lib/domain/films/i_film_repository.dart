import 'package:dartz/dartz.dart';

import 'film.dart';
import 'film_failure.dart';

abstract class IFilmRepository {
  Stream<Either<FilmFailure, List<Film>>> watchAll();
  Future<Either<FilmFailure, Unit>> create(Film film);
  Future<Either<FilmFailure, Unit>> delete(Film film);
  Future<Either<FilmFailure, Unit>> update(Film film);
}
