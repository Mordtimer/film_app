import 'package:films_app/application/auth/sign_in_form/auth_bloc/auth_bloc.dart';
import 'package:films_app/application/films/film_actor/film_actor_bloc.dart';
import 'package:films_app/application/films/film_watcher/film_watcher_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class UserFilmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<FilmWatcherBloc>(
            create: (context) => getIt<FilmWatcherBloc>()
              ..add(const FilmWatcherEvent.watchAllStarted())),
        BlocProvider<FilmActorBloc>(create: (context) => getIt<FilmActorBloc>())
      ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AuthBloc, AuthState>(
            listener: (context, state) => state.maybeMap(
                unauthenticated: (_) => Navigator.pushNamedAndRemoveUntil(
                    context, '/login', (route) => false),
                orElse: () {}),
          )
        ],
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                icon: Icon(Icons.logout),
                onPressed: () {
                  context.read<AuthBloc>().add(const AuthEvent.signedOut());
                }),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.add),
            onPressed: () {
              //TODO navigate
            },
          ),
        ),
      ),
    );
  }
}
