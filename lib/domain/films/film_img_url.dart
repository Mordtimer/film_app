import 'package:films_app/domain/core/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:films_app/domain/core/validators.dart';
import 'package:films_app/domain/core/value_object.dart';

class FilmImgUrl extends ValueObject<String>{

  final Either<ValueFailure<String>, String> value;

  factory FilmImgUrl(String input){
    return FilmImgUrl._(validateIsUrl(input).flatMap(validateEmptiness));
  }

  const FilmImgUrl._(this.value);
}