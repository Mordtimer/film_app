

import 'package:films_app/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    const explanation = 'Encountered value at an unreacoverable point. Terminating. ';
    return Error.safeToString("$explanation Failure was:\n$valueFailure");
  }
}

class NotAuthenticatedError extends Error{}