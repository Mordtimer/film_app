// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'film_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FilmItemDto _$FilmItemDtoFromJson(Map<String, dynamic> json) {
  return _FilmItemDto.fromJson(json);
}

/// @nodoc
class _$FilmItemDtoTearOff {
  const _$FilmItemDtoTearOff();

  _FilmItemDto call(
      {required String id,
      required String title,
      required String grade,
      required String description}) {
    return _FilmItemDto(
      id: id,
      title: title,
      grade: grade,
      description: description,
    );
  }

  FilmItemDto fromJson(Map<String, Object> json) {
    return FilmItemDto.fromJson(json);
  }
}

/// @nodoc
const $FilmItemDto = _$FilmItemDtoTearOff();

/// @nodoc
mixin _$FilmItemDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get grade => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FilmItemDtoCopyWith<FilmItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmItemDtoCopyWith<$Res> {
  factory $FilmItemDtoCopyWith(
          FilmItemDto value, $Res Function(FilmItemDto) then) =
      _$FilmItemDtoCopyWithImpl<$Res>;
  $Res call({String id, String title, String grade, String description});
}

/// @nodoc
class _$FilmItemDtoCopyWithImpl<$Res> implements $FilmItemDtoCopyWith<$Res> {
  _$FilmItemDtoCopyWithImpl(this._value, this._then);

  final FilmItemDto _value;
  // ignore: unused_field
  final $Res Function(FilmItemDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? grade = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$FilmItemDtoCopyWith<$Res>
    implements $FilmItemDtoCopyWith<$Res> {
  factory _$FilmItemDtoCopyWith(
          _FilmItemDto value, $Res Function(_FilmItemDto) then) =
      __$FilmItemDtoCopyWithImpl<$Res>;
  @override
  $Res call({String id, String title, String grade, String description});
}

/// @nodoc
class __$FilmItemDtoCopyWithImpl<$Res> extends _$FilmItemDtoCopyWithImpl<$Res>
    implements _$FilmItemDtoCopyWith<$Res> {
  __$FilmItemDtoCopyWithImpl(
      _FilmItemDto _value, $Res Function(_FilmItemDto) _then)
      : super(_value, (v) => _then(v as _FilmItemDto));

  @override
  _FilmItemDto get _value => super._value as _FilmItemDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? grade = freezed,
    Object? description = freezed,
  }) {
    return _then(_FilmItemDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FilmItemDto implements _FilmItemDto {
  const _$_FilmItemDto(
      {required this.id,
      required this.title,
      required this.grade,
      required this.description});

  factory _$_FilmItemDto.fromJson(Map<String, dynamic> json) =>
      _$_$_FilmItemDtoFromJson(json);

   Film toDomain() {
    return Film(
        id: UniqueId.fromUniqueString(id),
        title: FilmTitle(title),
        description: FilmDesc(description),
        grade: FilmGrade(grade));
  }
  @override
  final String id;
  @override
  final String title;
  @override
  final String grade;
  @override
  final String description;

  @override
  String toString() {
    return 'FilmItemDto(id: $id, title: $title, grade: $grade, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _FilmItemDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(grade) ^
      const DeepCollectionEquality().hash(description);

  @JsonKey(ignore: true)
  @override
  _$FilmItemDtoCopyWith<_FilmItemDto> get copyWith =>
      __$FilmItemDtoCopyWithImpl<_FilmItemDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_FilmItemDtoToJson(this);
  }
}

abstract class _FilmItemDto implements FilmItemDto {
  const factory _FilmItemDto(
      {required String id,
      required String title,
      required String grade,
      required String description}) = _$_FilmItemDto;

  factory _FilmItemDto.fromJson(Map<String, dynamic> json) =
      _$_FilmItemDto.fromJson;

  @override
  String get id => throw _privateConstructorUsedError;
  @override
  String get title => throw _privateConstructorUsedError;
  @override
  String get grade => throw _privateConstructorUsedError;
  @override
  String get description => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilmItemDtoCopyWith<_FilmItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}
