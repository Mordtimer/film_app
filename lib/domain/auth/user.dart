import 'package:films_app/domain/auth/unique_id.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed 
abstract class LocalUser with _$LocalUser {
  const factory LocalUser({
    required UniqueId id,
  }) = _LocalUser;
}