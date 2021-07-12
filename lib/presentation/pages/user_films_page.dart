import 'package:films_app/application/auth/sign_in_form/auth_bloc/auth_bloc.dart';
import 'package:films_app/application/films/film_actor/film_actor_bloc.dart';
import 'package:films_app/application/films/film_watcher/film_watcher_bloc.dart';
import 'package:films_app/presentation/pages/film_overview.dart';
import 'package:films_app/presentation/widgets/film_card.dart';
import 'package:films_app/presentation/pages/fim_add.dart';
import 'package:films_app/presentation/pages/sign_in_page.dart';
import 'package:films_app/presentation/widgets/search_delegate.dart';
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
                          unexpected: (_) =>
                              'Unexpected Error. Please contact app creator.',
                          insufficientPremission: (_) =>
                              'You have no premission to do this!',
                          notFound: (_) => 'Film not found')),
                    ));
                  });
            },
          )
        ],
        child: BlocBuilder<FilmWatcherBloc, FilmWatcherState>(
          builder: (context, state) {
            return state.map(
                initial: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                loadFailure: (_) => const Scaffold(
                      body: Center(
                        child: Text('Check your internet connection'),
                      ),
                    ),
                loadInProgress: (_) => const Center(
                      child: CircularProgressIndicator(),
                    ),
                loadSucces: (state) {
                  return Scaffold(
                    body: ListView.builder(
                        itemCount: state.films.length,
                        itemBuilder: (context, index) {
                          final film = state.films[index];
                          if (film.failureOption.isSome()) {
                            return Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Container(
                                child: Text('Invalid Data'),
                                color: Colors.yellow,
                                width: 200,
                                height: 30,
                              ),
                            );
                          } else {
                            return Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: FilmCard(film: film),
                            );
                          }
                        }),
                    appBar: AppBar(
                      title: Center(
                        child: Text('Your Library'),
                      ),
                      leading: IconButton(
                          icon: Icon(Icons.logout),
                          onPressed: () {
                            context.read<AuthBloc>().add(
                                  const AuthEvent.signedOut(),
                                );
                          }),
                      actions: [
                        IconButton(
                            onPressed: () async {
                              final result = await showSearch(
                                context: context,
                                delegate: CustomSearch(state.films),
                              );
                              if (result != null){
                                Navigator.of(context).pushNamed(FilmOverview.routeName, arguments: result);
                              }
                            },
                            icon: Icon(Icons.search))
                      ],
                    ),
                    floatingActionButton: FloatingActionButton(
                      child: Icon(Icons.add),
                      backgroundColor: Colors.green,
                      onPressed: () {
                        Navigator.of(context).pushNamed(FilmAdd.routeName);
                      },
                    ),
                  );
                });
          },
        ),
      ),
    );
  }
}
