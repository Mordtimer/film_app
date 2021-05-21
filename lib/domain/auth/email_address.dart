import 'package:dartz/dartz.dart';
import 'package:films_app/domain/core/failures.dart';
import 'package:films_app/domain/core/validators.dart';
import 'package:films_app/domain/core/value_object.dart';
import 'package:meta/meta.dart';

@immutable
class EmailAddress extends ValueObject {
  @override
  final Either<ValueFailure<String>, String> value;
  const EmailAddress._(this.value);

  factory EmailAddress(String input) {
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => '$value';
}
