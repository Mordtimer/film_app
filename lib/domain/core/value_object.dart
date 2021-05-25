import 'package:dartz/dartz.dart';
import 'package:films_app/domain/core/errors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'failures.dart';


@immutable
abstract class ValueObject<T> {
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  T getOrCrash(){
    return value.fold((f) => throw UnexpectedValueError(f), (r) => r);
  }

  @override
  bool operator == (Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }
  
  Either<ValueFailure<dynamic>, Unit> get failureOrUnit {
    return value.fold(
      (l) => left(l),
      (r) => right(unit),
    );
  }
  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}