import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  
  const factory ValueFailure.invalidPassword({
    required T failedValue,
  }) = InvalidPassword<T>;
  
  const factory ValueFailure.empty({
    required T failedValue,
  }) = Empty<T>;

  const factory ValueFailure.textTooLong({
    required T failedValue,
    required int max,
  }) = TextToLong<T>;

  const factory ValueFailure.multiLine({
    required T failedValue,
  }) = MultiLine<T>;

  const factory ValueFailure.notAGrade({
    required T failedValue,
  }) = NotAGrade<T>;

  const factory ValueFailure.notAnUrl({
    required T failedValue,
  }) = NotAnUrl<T>;

 
}

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  // Serves as a "catch all" failure if we don't know what exactly went wrong
  const factory AuthFailure.serverError() = ServerError;
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
