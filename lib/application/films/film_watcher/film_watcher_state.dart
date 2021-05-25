part of 'film_watcher_bloc.dart';

@freezed
class FilmWatcherState with _$FilmWatcherState {
  const factory FilmWatcherState.initial() = _Initial;
  const factory FilmWatcherState.loadInProgress() = _LoadInProgress;
  const factory FilmWatcherState.loadSucces(List<Film> film) = _LoadSucces;
  const factory FilmWatcherState.loadFailure(FilmFailure filmFailure) = _LoadFailure;
}
