import 'package:dartz/dartz.dart';
import 'package:films_app/domain/core/failures.dart';
import 'package:films_app/domain/core/validators.dart';
import 'package:films_app/domain/core/value_object.dart';

class FilmGrade extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLen = 1000;
  factory FilmGrade(String input) {
    return FilmGrade._(validateMaxStringLength(input, maxLen).flatMap(validateEmptiness));
  }

  const FilmGrade._(this.value);
}