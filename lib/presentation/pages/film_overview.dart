import 'package:films_app/domain/films/film.dart';
import 'package:flutter/material.dart';

class FilmOverview extends StatelessWidget {
  static const routeName = '/filmpage';
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Film;
    return Container(
      child: Text('Here is your film ${args.title.getOrCrash()}')
    );
  }
}