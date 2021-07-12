import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:films_app/domain/films/film.dart';
import 'package:films_app/domain/films/film_failure.dart';
import 'package:films_app/domain/films/i_film_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'film_watcher_event.dart';
part 'film_watcher_state.dart';
part 'film_watcher_bloc.freezed.dart';

@injectable
class FilmWatcherBloc extends Bloc<FilmWatcherEvent, FilmWatcherState> {
  FilmWatcherBloc(this._filmRepository) : super(_Initial());
  final IFilmRepository _filmRepository;
  // ignore: unused_field
  StreamSubscription<Either<FilmFailure, List<Film>>>? _filmStreamSubscribtion;
  @override
  Stream<FilmWatcherState> mapEventToState(
    FilmWatcherEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (e) async* {
      yield const FilmWatcherState.loadInProgress();
      _filmStreamSubscribtion = _filmRepository.watchAll().listen(
          (failureOrFilms) =>
              add(FilmWatcherEvent.filmsRecived(failureOrFilms)));
    }, filmsRecived: (_FilmsRecived e) async* {
      yield e.failureOrFilms.fold((l) => FilmWatcherState.loadFailure(l),
          (films) => FilmWatcherState.loadSucces(films));
    });
  }

  @override
  Future<void> close() {
    //_filmStreamSubscribtion?.pause();
    return super.close();
  }
}
