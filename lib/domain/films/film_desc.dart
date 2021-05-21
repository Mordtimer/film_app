import 'dart:html';

import 'package:dartz/dartz.dart';
import 'package:films_app/domain/core/failures.dart';
import 'package:films_app/domain/core/validators.dart';
import 'package:films_app/domain/core/value_object.dart';

class FilmDesc extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLen = 1000;
  factory FilmDesc(String input) {
    return FilmDesc._(validateMaxStringLength(input, maxLen).flatMap(validateEmptiness));
  }

  const FilmDesc._(this.value);
}