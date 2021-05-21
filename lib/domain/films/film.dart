import 'package:films_app/domain/auth/unique_id.dart';
import 'package:films_app/domain/films/film_desc.dart';
import 'package:films_app/domain/films/film_garde.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'film_title.dart';

part 'film.freezed.dart';

@freezed
abstract class Film with _$Film {
  const factory Film(
      {required UniqueId id,
      required FilmTitle title,
      required FilmDesc description,
      required FilmGrade grade}) = _Film;

  factory Film.newEmpty() => Film(
      description: FilmDesc(''),
      title: FilmTitle(''),
      grade: FilmGrade('5'),
      id: UniqueId());
}