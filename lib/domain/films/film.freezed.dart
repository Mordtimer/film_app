// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'film.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilmTearOff {
  const _$FilmTearOff();

  _Film call(
      {required UniqueId id,
      required FilmTitle title,
      required FilmDesc description,
      required FilmGrade grade,
      required FilmImgUrl url}) {
    return _Film(
      id: id,
      title: title,
      description: description,
      grade: grade,
      url: url,
    );
  }
}

/// @nodoc
const $Film = _$FilmTearOff();

/// @nodoc
mixin _$Film {
  UniqueId get id => throw _privateConstructorUsedError;
  FilmTitle get title => throw _privateConstructorUsedError;
  FilmDesc get description => throw _privateConstructorUsedError;
  FilmGrade get grade => throw _privateConstructorUsedError;
  FilmImgUrl get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilmCopyWith<Film> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmCopyWith<$Res> {
  factory $FilmCopyWith(Film value, $Res Function(Film) then) =
      _$FilmCopyWithImpl<$Res>;
  $Res call(
      {UniqueId id,
      FilmTitle title,
      FilmDesc description,
      FilmGrade grade,
      FilmImgUrl url});
}

/// @nodoc
class _$FilmCopyWithImpl<$Res> implements $FilmCopyWith<$Res> {
  _$FilmCopyWithImpl(this._value, this._then);

  final Film _value;
  // ignore: unused_field
  final $Res Function(Film) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? grade = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as FilmTitle,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FilmDesc,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as FilmGrade,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FilmImgUrl,
    ));
  }
}

/// @nodoc
abstract class _$FilmCopyWith<$Res> implements $FilmCopyWith<$Res> {
  factory _$FilmCopyWith(_Film value, $Res Function(_Film) then) =
      __$FilmCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId id,
      FilmTitle title,
      FilmDesc description,
      FilmGrade grade,
      FilmImgUrl url});
}

/// @nodoc
class __$FilmCopyWithImpl<$Res> extends _$FilmCopyWithImpl<$Res>
    implements _$FilmCopyWith<$Res> {
  __$FilmCopyWithImpl(_Film _value, $Res Function(_Film) _then)
      : super(_value, (v) => _then(v as _Film));

  @override
  _Film get _value => super._value as _Film;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? grade = freezed,
    Object? url = freezed,
  }) {
    return _then(_Film(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as FilmTitle,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as FilmDesc,
      grade: grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as FilmGrade,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as FilmImgUrl,
    ));
  }
}

/// @nodoc

class _$_Film extends _Film with DiagnosticableTreeMixin {
  const _$_Film(
      {required this.id,
      required this.title,
      required this.description,
      required this.grade,
      required this.url})
      : super._();

  @override
  final UniqueId id;
  @override
  final FilmTitle title;
  @override
  final FilmDesc description;
  @override
  final FilmGrade grade;
  @override
  final FilmImgUrl url;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Film(id: $id, title: $title, description: $description, grade: $grade, url: $url)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Film'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('description', description))
      ..add(DiagnosticsProperty('grade', grade))
      ..add(DiagnosticsProperty('url', url));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Film &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.description, description) ||
                const DeepCollectionEquality()
                    .equals(other.description, description)) &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(description) ^
      const DeepCollectionEquality().hash(grade) ^
      const DeepCollectionEquality().hash(url);

  @JsonKey(ignore: true)
  @override
  _$FilmCopyWith<_Film> get copyWith =>
      __$FilmCopyWithImpl<_Film>(this, _$identity);
}

abstract class _Film extends Film {
  const factory _Film(
      {required UniqueId id,
      required FilmTitle title,
      required FilmDesc description,
      required FilmGrade grade,
      required FilmImgUrl url}) = _$_Film;
  const _Film._() : super._();

  @override
  UniqueId get id => throw _privateConstructorUsedError;
  @override
  FilmTitle get title => throw _privateConstructorUsedError;
  @override
  FilmDesc get description => throw _privateConstructorUsedError;
  @override
  FilmGrade get grade => throw _privateConstructorUsedError;
  @override
  FilmImgUrl get url => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$FilmCopyWith<_Film> get copyWith => throw _privateConstructorUsedError;
}
