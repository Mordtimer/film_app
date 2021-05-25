import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:films_app/domain/films/film.dart';
import 'package:films_app/domain/films/film_failure.dart';
import 'package:films_app/domain/films/i_film_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_actor_event.dart';
part 'film_actor_state.dart';
part 'film_actor_bloc.freezed.dart';

class FilmActorBloc extends Bloc<FilmActorEvent, FilmActorState> {
  FilmActorBloc(this._filmRepository) : super(_Initial());

  IFilmRepository _filmRepository;

  @override
  Stream<FilmActorState> mapEventToState(
    FilmActorEvent event,
  ) async* {
    event.map(deleted: (e) async* {
      yield const FilmActorState.actionInProgress();
      final possibleFailure = await _filmRepository.delete(event.film);
      yield possibleFailure.fold((l) => FilmActorState.deleteFailure(l),
          (_) => FilmActorState.deleteSucces());
    });
  }
}
