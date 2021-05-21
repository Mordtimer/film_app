import 'package:dartz/dartz.dart';
import 'package:films_app/domain/core/failures.dart';
import 'package:films_app/domain/core/validators.dart';
import 'package:films_app/domain/core/value_object.dart';

class FilmTitle extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  static const int maxLen = 1000;
  factory FilmTitle(String input) {
    return FilmTitle._(validateMaxStringLength(input, maxLen)
        .flatMap(validateEmptiness)
        .flatMap(validateMultiLine));
  }

  const FilmTitle._(this.value);
}
