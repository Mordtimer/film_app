import 'package:films_app/domain/films/film.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearch extends SearchDelegate {
  final List<Film> filmList;
  CustomSearch(this.filmList);

  @override
  ThemeData appBarTheme(BuildContext context) {
    return ThemeData(
      hintColor: Colors.white,
      textTheme: TextTheme(headline6: TextStyle(color: Colors.white))
          .apply(bodyColor: Colors.white),
      primaryColor: Colors.grey[900],
      scaffoldBackgroundColor: Color(0x2C2C2E),
    );
  }

  @override
  TextStyle get searchFieldStyle => TextStyle(
        color: Colors.white,
        fontSize: 18.0,
      );

  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        icon: Icon(Icons.close),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(CupertinoIcons.arrow_left),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final result = filmList.where((el) =>
        el.title.getOrCrash().toLowerCase().contains(query.toLowerCase()));
    return ListView(
        children: result
            .map<ListTile>((e) => ListTile(
                  onTap: () {
                    close(context, e);
                  },
                  trailing: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.movie, color: Colors.white,),
                  ),
                  title: Text(
                    e.title.getOrCrash(),
                    style: TextStyle(color: Colors.white),
                  ),
                ))
            .toList());
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final result = filmList.where((el) =>
        el.title.getOrCrash().toLowerCase().contains(query.toLowerCase()));

    return ListView(
        children: result
            .map<ListTile>((e) => ListTile(
                  onTap: () {
                    close(context, e);
                  },
                  trailing: Icon(Icons.movie),
                  title: Text(
                    e.title.getOrCrash(),
                    style: TextStyle(color: Colors.white),
                  ),
                ))
            .toList());
  }
}
