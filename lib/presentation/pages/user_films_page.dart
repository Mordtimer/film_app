import 'package:films_app/application/auth/sign_in_form/auth_bloc/auth_bloc.dart';
import 'package:films_app/application/films/film_actor/film_actor_bloc.dart';
import 'package:films_app/application/films/film_watcher/film_watcher_bloc.dart';
import 'package:films_app/presentation/pages/films_overview.dart';
import 'package:films_app/presentation/pages/sign_in_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';

class UserFilmPage extends StatelessWidget {
  static const routeName = '/filmspage';
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
                    context, SignInPage.routeName, (route) => false),
                orElse: () {}),
          ),
          BlocListener<FilmActorBloc, FilmActorState>(
            listener: (context, state) {
              state.maybeMap(
                  orElse: () {},
                  deleteFailure: (state) {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      duration: const Duration(seconds: 5),
                      content: Text(state.filmFailure.map(
                          unexpected: (_) => 'Unexpected Error. Please contact app creator.',
                          insufficientPremission: (_) =>
                              'You have no premission to do this!',
                          notFound: (_) => 'Note not found')),
                    ));
                  });
            },
          )
        ],
        child: Scaffold(
          body: FilmsOverview(),
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
