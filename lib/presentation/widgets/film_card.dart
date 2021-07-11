import 'package:films_app/domain/films/film.dart';
import 'package:films_app/presentation/pages/film_overview.dart';
import 'package:flutter/material.dart';

class FilmCard extends StatelessWidget {
  final Film film;
  const FilmCard({Key? key, required Film this.film}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushNamed(FilmOverview.routeName, arguments: film);
      },
      child: Card(
        child: Column(
          children: [
            ListTile(
              trailing: Text(film.grade.getStrOrCrash),
              title: Text(film.title.getOrCrash()),
            ),
            SizedBox(
              child: Image.network(film.url.getOrCrash(),
                  width: double.infinity, fit: BoxFit.fitWidth),
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
