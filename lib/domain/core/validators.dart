import 'package:dartz/dartz.dart';

import 'failures.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length > 6) {
    return right(input);
  } else {
    return left(ValueFailure.invalidPassword(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMaxStringLength(
    String input, int maxLength) {
  if (input.length <= maxLength) {
    return right(input);
  } else {
    return left(ValueFailure.textTooLong(failedValue: input, max: maxLength));
  }
}

Either<ValueFailure<String>, String> validateEmptiness(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.empty(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateMultiLine(String input) {
  if (input.contains('\n')){
    return right(input);
  } else {
    return right(input);
  }
}

Either<ValueFailure<String>, String> validateIsGrade(String input) {
  if (input.runtimeType == int && input.length < 10 && input.length > 1){
    return right(input);
  } else {
    return left(ValueFailure.notAGrade(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateIsUrl(String input) {
  RegExp exp = RegExp(r'(?:(?:https?|ftp):\/\/)?[\w/\-?=%.]+\.[\w/\-?=%.]+');
  if (exp.hasMatch(input)){
    return right(input);
  } else {
    return left(ValueFailure.notAnUrl(failedValue: input));
  }
}
