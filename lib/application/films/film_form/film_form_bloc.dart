import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:films_app/domain/films/film.dart';
import 'package:films_app/domain/films/film_desc.dart';
import 'package:films_app/domain/films/film_failure.dart';
import 'package:films_app/domain/films/film_grade.dart';
import 'package:films_app/domain/films/film_title.dart';
import 'package:films_app/domain/films/i_film_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_form_event.dart';
part 'film_form_state.dart';
part 'film_form_bloc.freezed.dart';

class FilmFormBloc extends Bloc<FilmFormEvent, FilmFormState> {
  final IFilmRepository _filmRepository;

  FilmFormBloc(this._filmRepository) : super(FilmFormState.initial());

  @override
  Stream<FilmFormState> mapEventToState(
    FilmFormEvent event,
  ) async* {
    yield* event.map(initialized: (e) async* {
      yield e.initialFilmOption.fold(
          () => state,
          (initialFilm) => state.copyWith(
                film: initialFilm,
                isEditing: true,
              ));
    }, titleChanged: (e) async* {
      yield state.copyWith(
          film: state.film.copyWith(title: FilmTitle(e.title)),
          saveFailureOrSuccessOption: none());
    }, descriptionChanged: (e) async* {
      yield state.copyWith(
          film: state.film.copyWith(description: FilmDesc(e.desc)),
          saveFailureOrSuccessOption: none());
    }, gradeChanged: (e) async* {
      yield state.copyWith(
        film: state.film.copyWith(grade: FilmGrade(e.grade)),
        saveFailureOrSuccessOption: none(),
      );
    });
  }
}