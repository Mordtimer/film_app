import 'package:freezed_annotation/freezed_annotation.dart';

part 'film_failure.freezed.dart';
@freezed
abstract class FilmFailure with _$FilmFailure{
  const factory FilmFailure.unexpected({required Object object}) = _Unexpected;
  const factory FilmFailure.insufficientPremission() = _InsufficientPremission;
  const factory FilmFailure.notFound() = _NotFound;
}