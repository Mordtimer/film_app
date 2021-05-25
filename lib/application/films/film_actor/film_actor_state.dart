part of 'film_actor_bloc.dart';

@freezed
class FilmActorState with _$FilmActorState {
  const factory FilmActorState.initial() = _Initial;
  const factory FilmActorState.actionInProgress() = _ActionInProgress;
  const factory FilmActorState.deleteFailure(FilmFailure filmFailure) = DeleteFailure;
  const factory FilmActorState.deleteSucces() = _DeleteSuccess;
}
