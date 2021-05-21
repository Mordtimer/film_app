import 'package:dartz/dartz.dart';
import 'package:films_app/domain/films/film.dart';
import 'package:films_app/domain/films/film_failure.dart';

abstract class IFilmRepository {

  Stream<Either<FilmFailure, List<Film> >> watchAll();
  Stream<Either<FilmFailure, List<Film> >> watchUncompleted();
  Stream<Either<FilmFailure, Unit >> create(Film film);
  Stream<Either<FilmFailure, Unit >> update(Film film);
  Stream<Either<FilmFailure, Unit >> delete(Film film);
}