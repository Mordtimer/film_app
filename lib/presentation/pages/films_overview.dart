import 'package:films_app/application/films/film_watcher/film_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmsOverview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FilmWatcherBloc, FilmWatcherState>(
        builder: (context, state) {
      return state.map(
          initial: (_) => Container(),
          loadInProgress: (_) =>
              const Center(child: CircularProgressIndicator()),
          loadSucces: (state) {
            return ListView.builder(
              itemCount: state.films.length,
              itemBuilder: (context, index) {
              final film = state.films[index];
              if (film.failureOption.isSome()) {
                return Container(
                  color: Colors.red,
                  width: 200,
                  height: 30,
                );
              } else {
                return Container(
                  color: Colors.green,
                  width: 300,
                  height: 30,
                );
              }
            })
            ;
          },
          loadFailure: (failure) => Container(
                color: Colors.red,
                width: 100,
                height: 30,
              ));
    });
  }
}
