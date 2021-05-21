import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_actor_event.dart';
part 'film_actor_state.dart';
part 'film_actor_bloc.freezed.dart';

class FilmActorBloc extends Bloc<FilmActorEvent, FilmActorState> {
  FilmActorBloc() : super(_Initial());

  @override
  Stream<FilmActorState> mapEventToState(
    FilmActorEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
