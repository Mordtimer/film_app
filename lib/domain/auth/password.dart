import 'package:dartz/dartz.dart';
import 'package:films_app/domain/core/failures.dart';
import 'package:films_app/domain/core/validators.dart';
import 'package:films_app/domain/core/value_object.dart';
import 'package:meta/meta.dart';

@immutable
class Password extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;
  const Password._(this.value);

  factory Password(String input) {
    return Password._(
      validatePassword(input),
    );
  }

  @override
  bool operator == (Object o) {
    if (identical(this, o)) return true;
    return o is Password && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => '$value';
}
