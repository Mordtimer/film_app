part of 'film_actor_bloc.dart';

@freezed
class FilmActorEvent with _$FilmActorEvent {
  const factory FilmActorEvent.deleted(Film film) = _Deleted;
}