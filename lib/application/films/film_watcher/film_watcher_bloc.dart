import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_watcher_event.dart';
part 'film_watcher_state.dart';
part 'film_watcher_bloc.freezed.dart';

class FilmWatcherBloc extends Bloc<FilmWatcherEvent, FilmWatcherState> {
  FilmWatcherBloc() : super(_Initial());

  @override
  Stream<FilmWatcherState> mapEventToState(
    FilmWatcherEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
