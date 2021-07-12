import 'package:dartz/dartz.dart';
import 'package:films_app/application/films/film_form/film_form_bloc.dart';
import 'package:films_app/domain/films/film.dart';
import 'package:films_app/injection.dart';
import 'package:films_app/presentation/widgets/film_add_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FilmAdd extends StatelessWidget {
  static const routeName = '/addFilm';
  @override
  Widget build(BuildContext context) {
    final Film? film = ModalRoute.of(context)!.settings.arguments as Film?;
    Option<Film> initFilm = none();
    if (film != null) {
      initFilm == some(film);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Add Film'),
      ),
      
        body: FilmAddForm(
          film: film,
        ),
      
    );
  }
}
