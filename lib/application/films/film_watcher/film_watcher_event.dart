part of 'film_watcher_bloc.dart';

@freezed
class FilmWatcherEvent with _$FilmWatcherEvent {
  const factory FilmWatcherEvent.started() = _Started;
}