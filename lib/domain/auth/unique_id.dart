import 'package:dartz/dartz.dart';
import 'package:films_app/domain/core/failures.dart';
import 'package:films_app/domain/core/value_object.dart';
import 'package:uuid/uuid.dart';

class UniqueId extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory UniqueId() {
    return UniqueId._(right(const Uuid().v1())        );
  }

  factory UniqueId.fromUniqueString(String uniqueID) {

    return UniqueId._(
        right(uniqueID)
        );
  }

  const UniqueId._(this.value);
}
