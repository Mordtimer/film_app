part of 'film_watcher_bloc.dart';

@freezed
class FilmWatcherEvent with _$FilmWatcherEvent {
  const factory FilmWatcherEvent.watchAllStarted() = _WatchAllStarted;
  const factory FilmWatcherEvent.filmsRecived(Either<FilmFailure, List<Film>> failureOrFilms) = _FilmsRecived;
}