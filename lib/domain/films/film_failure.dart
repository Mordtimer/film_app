import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_failure.freezed.dart';
@freezed
abstract class FilmFailure with _$FilmFailure{
  const factory FilmFailure.unexpected() = _Unexpected;
}