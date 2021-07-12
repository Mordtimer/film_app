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
        Navigator.of(context)
            .pushNamed(FilmOverview.routeName, arguments: film);
      },
      child: Card(
        child: Column(
          children: [
            ListTile(
              trailing: Icon(film.isWatchedYet.fold(
                  () => Icons.watch_later, (a) => Icons.done_all_rounded)),
              subtitle: Text(film.grade.getStrOrCrash),
              title: Text(film.title.getOrCrash()),
            ),
            SizedBox(
              child: Image.network(film.url.getOrCrash(), loadingBuilder:
                  (BuildContext context, Widget child,
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
              }, errorBuilder: (BuildContext context, Object exception,
                  StackTrace? stackTrace) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: const Icon(Icons.error_outline_rounded, size: 60,),
                    ), Text('Image not found')
                  ],
                );
              }, width: double.infinity, fit: BoxFit.fitWidth),
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
