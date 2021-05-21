import 'package:films_app/domain/auth/unique_id.dart';
import 'package:films_app/domain/auth/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

extension FiebaseUserDomainX on User {
  LocalUser toDomain() {
    return LocalUser(id: UniqueId.fromUniqueString(uid));
  }
}
