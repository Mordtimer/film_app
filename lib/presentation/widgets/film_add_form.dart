import 'package:dartz/dartz.dart';
import 'package:films_app/application/films/film_form/film_form_bloc.dart';
import 'package:films_app/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:films_app/domain/films/film.dart';

class FilmAddForm extends StatelessWidget {
  final _possibleGrades = <String>[
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
    '10'
  ];

  late final Option<Film> film;

  FilmAddForm({Key? key, Film? film}) : super(key: key) {
    if (film == null) {
      this.film = none();
    } else
      this.film = some(film);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<FilmFormBloc>()..add(FilmFormEvent.initialized(film)),
      child: BlocConsumer<FilmFormBloc, FilmFormState>(
        listener: (context, state) {
         
          state.saveFailureOrSuccessOption.fold(
              () => () {},
              (either) => either.fold(
                      (failure) => {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                content: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(failure.map(
                                    unexpected: (_) => 'Unexpected error',
                                    insufficientPremission: (_) =>
                                        'insufficientPremission',
                                    notFound: (_) => 'notFound'))
                              ],
                            )))
                          }, (r) {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/filmspage', (route) => false);
                  }));
        },
        builder: (context, state) {
          return Form(
              autovalidateMode: AutovalidateMode.always,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 32,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 8, 32, 8),
                    child: TextFormField(
                      initialValue: film.fold(() => '', (a) => a.title.getOrCrash()),
                      onChanged: (value) => context
                          .read<FilmFormBloc>()
                          .add(FilmFormEvent.titleChanged(value)),
                      decoration: InputDecoration(labelText: 'Title'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 32, 32, 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text('Grade',
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 16)),
                            DropdownButton<String>(
                                value: state.film.grade.getOrCrash(),
                                items: _possibleGrades.map((String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: new Text(value),
                                  );
                                }).toList(),
                                onChanged: (value) {
                                  context
                                      .read<FilmFormBloc>()
                                      .add(FilmFormEvent.gradeChanged(value!));
                                }),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Do You watched this film?',
                                style: TextStyle(
                                    color: Colors.white60, fontSize: 16)),
                            Checkbox(
                                value: state.film.isWatched,
                                onChanged: (bool? value) {
                                  context
                                      .read<FilmFormBloc>()
                                      .add(FilmFormEvent.isWatchedChanged());
                                }),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 0, 32, 8),

                    child: TextFormField(
                      initialValue: film.fold(() => '', (a) => a.url.getOrCrash()),
                      onChanged: (value) => context
                          .read<FilmFormBloc>()
                          .add(FilmFormEvent.urlChanged(value)),
                      validator: (_) => context
                          .read<FilmFormBloc>()
                          .state
                          .film
                          .url
                          .value
                          .fold(
                              (f) => f.maybeMap(
                                  notAnUrl: (_) => 'Invalid url',
                                  orElse: () => null),
                              (_) => null),
                      decoration: InputDecoration(
                        labelText: 'Image url',
                      ),
                      maxLines: 1,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(32, 8, 32, 8),
                    child: TextFormField(
                      initialValue: film.fold(() => '', (a) => a.description.getOrCrash()),
                      onChanged: (value) => context
                          .read<FilmFormBloc>()
                          .add(FilmFormEvent.descriptionChanged(value)),
                      decoration: InputDecoration(
                        labelText: 'Description',
                      ),
                      maxLines: null,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(32),
                    child: Center(
                      child: TextButton(
                        style: ButtonStyle(
                            backgroundColor:
                                MaterialStateProperty.all(Colors.green),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black)),
                        onPressed: () {
                          context
                              .read<FilmFormBloc>()
                              .add(FilmFormEvent.saved());
                        },
                        child: Text('Save'),
                      ),
                    ),
                  )
                ],
              ));
        },
      ),
    );
  }
}
