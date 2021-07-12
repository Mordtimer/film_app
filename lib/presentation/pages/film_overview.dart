import 'package:films_app/application/films/film_actor/film_actor_bloc.dart';
import 'package:films_app/domain/films/film.dart';
import 'package:films_app/presentation/pages/user_films_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../injection.dart';
import 'fim_add.dart';

class FilmOverview extends StatelessWidget {
  static const routeName = '/filmpage';
  @override
  Widget build(BuildContext context) {
    final film = ModalRoute.of(context)!.settings.arguments as Film;
    return BlocProvider(
      create: (context) => getIt<FilmActorBloc>(),
      child: BlocConsumer<FilmActorBloc, FilmActorState>(
        listener: (context, state) {
          state.maybeMap(
              deleteFailure: (state) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      Text(state.filmFailure.map(
                          unexpected: (_) => 'Unexpected Error',
                          insufficientPremission: (_) =>
                              'insufficient Premission',
                          notFound: (_) => 'notFound'))
                    ])));
              },
              orElse: () {});
        },
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                  actions: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                      child: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          context
                              .read<FilmActorBloc>()
                              .add(FilmActorEvent.deleted(film));
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              UserFilmPage.routeName, (route) => false);
                        },
                      ),
                    )
                  ],
                  title: Center(
                    child: Text(
                      film.title.value.fold((l) => '', (r) => r),
                    ),
                  )),
              body: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                      child: SizedBox(
                        child: Image.network(film.url.value.fold((l) => '', (r) => r),
                            loadingBuilder: (BuildContext context, Widget child,
                                ImageChunkEvent? loadingProgress) {
                          if (loadingProgress == null) {
                            return child;
                          }
                          return Center(
                            child: CircularProgressIndicator(
                              value: loadingProgress.expectedTotalBytes != null
                                  ? loadingProgress.cumulativeBytesLoaded /
                                      loadingProgress.expectedTotalBytes!
                                  : null,
                            ),
                          );
                        }, errorBuilder: (BuildContext context,
                                Object exception, StackTrace? stackTrace) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: const Icon(
                                  Icons.error_outline_rounded,
                                  size: 60,
                                ),
                              ),
                              Center(child: Text('Image not found'))
                            ],
                          );
                        }, width: double.infinity, fit: BoxFit.cover),
                        height: 300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(film.grade.getStrOrCrash,
                                style: Theme.of(context).textTheme.headline5),
                            film.isWatchedYet.fold(
                                () => Icon(
                                      Icons.watch_later,
                                    ),
                                (a) => Icon(
                                      Icons.done_all_rounded,
                                      color: Colors.green,
                                    )),
                          ]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(film.description.value.fold((l) => '', (r) => r),
                          style: Theme.of(context).textTheme.bodyText1),
                    )
                  ],
                ),
              ),
              floatingActionButton: FloatingActionButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(FilmAdd.routeName, arguments: film);
                },
                child: Icon(Icons.edit),
                backgroundColor: Colors.green,
              ));
        },
      ),
    );
  }
}
