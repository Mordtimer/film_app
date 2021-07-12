import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:films_app/domain/films/film.dart';
import 'package:films_app/domain/films/film_desc.dart';
import 'package:films_app/domain/films/film_failure.dart';
import 'package:films_app/domain/films/film_grade.dart';
import 'package:films_app/domain/films/film_img_url.dart';
import 'package:films_app/domain/films/film_title.dart';
import 'package:films_app/domain/films/i_film_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'film_form_event.dart';
part 'film_form_state.dart';
part 'film_form_bloc.freezed.dart';

@injectable
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
    }, saved: (e) async* {
      Either<FilmFailure, Unit>? failureOrSuccess;

      yield state.copyWith(
        isSaving: true,
        saveFailureOrSuccessOption: none(),
      );

      if (state.film.failureOption.isNone()) {
        failureOrSuccess = state.isEditing
            ? await _filmRepository.update(state.film)
            : await _filmRepository.create(state.film);
      }

      yield state.copyWith(
          isSaving: false,
          showErrorMessages: true,
          saveFailureOrSuccessOption: optionOf(failureOrSuccess));
    }, isWatchedChanged: (e) async* {
      bool current = state.film.isWatched;
      yield state.copyWith(film: state.film.copyWith(isWatched: !current));
    }, urlChanged: (e) async* {
      yield state.copyWith(film: state.film.copyWith(url: FilmImgUrl(e.url)));
    });
  }
}
