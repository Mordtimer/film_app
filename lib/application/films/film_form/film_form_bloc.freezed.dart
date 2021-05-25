// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'film_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$FilmFormEventTearOff {
  const _$FilmFormEventTearOff();

  _Initialized initialized(Option<Film> initialFilmOption) {
    return _Initialized(
      initialFilmOption,
    );
  }

  _TitleChanged titleChanged(String title) {
    return _TitleChanged(
      title,
    );
  }

  _DescriptionChanged descriptionChanged(String desc) {
    return _DescriptionChanged(
      desc,
    );
  }

  _GradeChanged gradeChanged(String grade) {
    return _GradeChanged(
      grade,
    );
  }

  _Saved saved() {
    return const _Saved();
  }
}

/// @nodoc
const $FilmFormEvent = _$FilmFormEventTearOff();

/// @nodoc
mixin _$FilmFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Film> initialFilmOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descriptionChanged,
    required TResult Function(String grade) gradeChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Film> initialFilmOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descriptionChanged,
    TResult Function(String grade)? gradeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_Saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmFormEventCopyWith<$Res> {
  factory $FilmFormEventCopyWith(
          FilmFormEvent value, $Res Function(FilmFormEvent) then) =
      _$FilmFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$FilmFormEventCopyWithImpl<$Res>
    implements $FilmFormEventCopyWith<$Res> {
  _$FilmFormEventCopyWithImpl(this._value, this._then);

  final FilmFormEvent _value;
  // ignore: unused_field
  final $Res Function(FilmFormEvent) _then;
}

/// @nodoc
abstract class _$InitializedCopyWith<$Res> {
  factory _$InitializedCopyWith(
          _Initialized value, $Res Function(_Initialized) then) =
      __$InitializedCopyWithImpl<$Res>;
  $Res call({Option<Film> initialFilmOption});
}

/// @nodoc
class __$InitializedCopyWithImpl<$Res> extends _$FilmFormEventCopyWithImpl<$Res>
    implements _$InitializedCopyWith<$Res> {
  __$InitializedCopyWithImpl(
      _Initialized _value, $Res Function(_Initialized) _then)
      : super(_value, (v) => _then(v as _Initialized));

  @override
  _Initialized get _value => super._value as _Initialized;

  @override
  $Res call({
    Object? initialFilmOption = freezed,
  }) {
    return _then(_Initialized(
      initialFilmOption == freezed
          ? _value.initialFilmOption
          : initialFilmOption // ignore: cast_nullable_to_non_nullable
              as Option<Film>,
    ));
  }
}

/// @nodoc

class _$_Initialized implements _Initialized {
  const _$_Initialized(this.initialFilmOption);

  @override
  final Option<Film> initialFilmOption;

  @override
  String toString() {
    return 'FilmFormEvent.initialized(initialFilmOption: $initialFilmOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Initialized &&
            (identical(other.initialFilmOption, initialFilmOption) ||
                const DeepCollectionEquality()
                    .equals(other.initialFilmOption, initialFilmOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(initialFilmOption);

  @JsonKey(ignore: true)
  @override
  _$InitializedCopyWith<_Initialized> get copyWith =>
      __$InitializedCopyWithImpl<_Initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Film> initialFilmOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descriptionChanged,
    required TResult Function(String grade) gradeChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialFilmOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Film> initialFilmOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descriptionChanged,
    TResult Function(String grade)? gradeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialFilmOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _Initialized implements FilmFormEvent {
  const factory _Initialized(Option<Film> initialFilmOption) = _$_Initialized;

  Option<Film> get initialFilmOption => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$InitializedCopyWith<_Initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$FilmFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_TitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'FilmFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @JsonKey(ignore: true)
  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Film> initialFilmOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descriptionChanged,
    required TResult Function(String grade) gradeChanged,
    required TResult Function() saved,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Film> initialFilmOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descriptionChanged,
    TResult Function(String grade)? gradeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements FilmFormEvent {
  const factory _TitleChanged(String title) = _$_TitleChanged;

  String get title => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$DescriptionChangedCopyWith<$Res> {
  factory _$DescriptionChangedCopyWith(
          _DescriptionChanged value, $Res Function(_DescriptionChanged) then) =
      __$DescriptionChangedCopyWithImpl<$Res>;
  $Res call({String desc});
}

/// @nodoc
class __$DescriptionChangedCopyWithImpl<$Res>
    extends _$FilmFormEventCopyWithImpl<$Res>
    implements _$DescriptionChangedCopyWith<$Res> {
  __$DescriptionChangedCopyWithImpl(
      _DescriptionChanged _value, $Res Function(_DescriptionChanged) _then)
      : super(_value, (v) => _then(v as _DescriptionChanged));

  @override
  _DescriptionChanged get _value => super._value as _DescriptionChanged;

  @override
  $Res call({
    Object? desc = freezed,
  }) {
    return _then(_DescriptionChanged(
      desc == freezed
          ? _value.desc
          : desc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_DescriptionChanged implements _DescriptionChanged {
  const _$_DescriptionChanged(this.desc);

  @override
  final String desc;

  @override
  String toString() {
    return 'FilmFormEvent.descriptionChanged(desc: $desc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DescriptionChanged &&
            (identical(other.desc, desc) ||
                const DeepCollectionEquality().equals(other.desc, desc)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(desc);

  @JsonKey(ignore: true)
  @override
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      __$DescriptionChangedCopyWithImpl<_DescriptionChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Film> initialFilmOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descriptionChanged,
    required TResult Function(String grade) gradeChanged,
    required TResult Function() saved,
  }) {
    return descriptionChanged(desc);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Film> initialFilmOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descriptionChanged,
    TResult Function(String grade)? gradeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(desc);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return descriptionChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (descriptionChanged != null) {
      return descriptionChanged(this);
    }
    return orElse();
  }
}

abstract class _DescriptionChanged implements FilmFormEvent {
  const factory _DescriptionChanged(String desc) = _$_DescriptionChanged;

  String get desc => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$DescriptionChangedCopyWith<_DescriptionChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$GradeChangedCopyWith<$Res> {
  factory _$GradeChangedCopyWith(
          _GradeChanged value, $Res Function(_GradeChanged) then) =
      __$GradeChangedCopyWithImpl<$Res>;
  $Res call({String grade});
}

/// @nodoc
class __$GradeChangedCopyWithImpl<$Res>
    extends _$FilmFormEventCopyWithImpl<$Res>
    implements _$GradeChangedCopyWith<$Res> {
  __$GradeChangedCopyWithImpl(
      _GradeChanged _value, $Res Function(_GradeChanged) _then)
      : super(_value, (v) => _then(v as _GradeChanged));

  @override
  _GradeChanged get _value => super._value as _GradeChanged;

  @override
  $Res call({
    Object? grade = freezed,
  }) {
    return _then(_GradeChanged(
      grade == freezed
          ? _value.grade
          : grade // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GradeChanged implements _GradeChanged {
  const _$_GradeChanged(this.grade);

  @override
  final String grade;

  @override
  String toString() {
    return 'FilmFormEvent.gradeChanged(grade: $grade)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _GradeChanged &&
            (identical(other.grade, grade) ||
                const DeepCollectionEquality().equals(other.grade, grade)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(grade);

  @JsonKey(ignore: true)
  @override
  _$GradeChangedCopyWith<_GradeChanged> get copyWith =>
      __$GradeChangedCopyWithImpl<_GradeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Film> initialFilmOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descriptionChanged,
    required TResult Function(String grade) gradeChanged,
    required TResult Function() saved,
  }) {
    return gradeChanged(grade);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Film> initialFilmOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descriptionChanged,
    TResult Function(String grade)? gradeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (gradeChanged != null) {
      return gradeChanged(grade);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return gradeChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (gradeChanged != null) {
      return gradeChanged(this);
    }
    return orElse();
  }
}

abstract class _GradeChanged implements FilmFormEvent {
  const factory _GradeChanged(String grade) = _$_GradeChanged;

  String get grade => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$GradeChangedCopyWith<_GradeChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SavedCopyWith<$Res> {
  factory _$SavedCopyWith(_Saved value, $Res Function(_Saved) then) =
      __$SavedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SavedCopyWithImpl<$Res> extends _$FilmFormEventCopyWithImpl<$Res>
    implements _$SavedCopyWith<$Res> {
  __$SavedCopyWithImpl(_Saved _value, $Res Function(_Saved) _then)
      : super(_value, (v) => _then(v as _Saved));

  @override
  _Saved get _value => super._value as _Saved;
}

/// @nodoc

class _$_Saved implements _Saved {
  const _$_Saved();

  @override
  String toString() {
    return 'FilmFormEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Film> initialFilmOption) initialized,
    required TResult Function(String title) titleChanged,
    required TResult Function(String desc) descriptionChanged,
    required TResult Function(String grade) gradeChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Film> initialFilmOption)? initialized,
    TResult Function(String title)? titleChanged,
    TResult Function(String desc)? descriptionChanged,
    TResult Function(String grade)? gradeChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initialized value) initialized,
    required TResult Function(_TitleChanged value) titleChanged,
    required TResult Function(_DescriptionChanged value) descriptionChanged,
    required TResult Function(_GradeChanged value) gradeChanged,
    required TResult Function(_Saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initialized value)? initialized,
    TResult Function(_TitleChanged value)? titleChanged,
    TResult Function(_DescriptionChanged value)? descriptionChanged,
    TResult Function(_GradeChanged value)? gradeChanged,
    TResult Function(_Saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _Saved implements FilmFormEvent {
  const factory _Saved() = _$_Saved;
}

/// @nodoc
class _$FilmFormStateTearOff {
  const _$FilmFormStateTearOff();

  _SignInFormState call(
      {required Film film,
      required bool showErrorMessages,
      required bool isSaving,
      required bool isEditing,
      required Option<Either<FilmFailure, Unit>> saveFailureOrSuccessOption}) {
    return _SignInFormState(
      film: film,
      showErrorMessages: showErrorMessages,
      isSaving: isSaving,
      isEditing: isEditing,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
const $FilmFormState = _$FilmFormStateTearOff();

/// @nodoc
mixin _$FilmFormState {
  Film get film => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  Option<Either<FilmFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FilmFormStateCopyWith<FilmFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FilmFormStateCopyWith<$Res> {
  factory $FilmFormStateCopyWith(
          FilmFormState value, $Res Function(FilmFormState) then) =
      _$FilmFormStateCopyWithImpl<$Res>;
  $Res call(
      {Film film,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<FilmFailure, Unit>> saveFailureOrSuccessOption});

  $FilmCopyWith<$Res> get film;
}

/// @nodoc
class _$FilmFormStateCopyWithImpl<$Res>
    implements $FilmFormStateCopyWith<$Res> {
  _$FilmFormStateCopyWithImpl(this._value, this._then);

  final FilmFormState _value;
  // ignore: unused_field
  final $Res Function(FilmFormState) _then;

  @override
  $Res call({
    Object? film = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      film: film == freezed
          ? _value.film
          : film // ignore: cast_nullable_to_non_nullable
              as Film,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FilmFailure, Unit>>,
    ));
  }

  @override
  $FilmCopyWith<$Res> get film {
    return $FilmCopyWith<$Res>(_value.film, (value) {
      return _then(_value.copyWith(film: value));
    });
  }
}

/// @nodoc
abstract class _$SignInFormStateCopyWith<$Res>
    implements $FilmFormStateCopyWith<$Res> {
  factory _$SignInFormStateCopyWith(
          _SignInFormState value, $Res Function(_SignInFormState) then) =
      __$SignInFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Film film,
      bool showErrorMessages,
      bool isSaving,
      bool isEditing,
      Option<Either<FilmFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $FilmCopyWith<$Res> get film;
}

/// @nodoc
class __$SignInFormStateCopyWithImpl<$Res>
    extends _$FilmFormStateCopyWithImpl<$Res>
    implements _$SignInFormStateCopyWith<$Res> {
  __$SignInFormStateCopyWithImpl(
      _SignInFormState _value, $Res Function(_SignInFormState) _then)
      : super(_value, (v) => _then(v as _SignInFormState));

  @override
  _SignInFormState get _value => super._value as _SignInFormState;

  @override
  $Res call({
    Object? film = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? isEditing = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_SignInFormState(
      film: film == freezed
          ? _value.film
          : film // ignore: cast_nullable_to_non_nullable
              as Film,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<FilmFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_SignInFormState implements _SignInFormState {
  const _$_SignInFormState(
      {required this.film,
      required this.showErrorMessages,
      required this.isSaving,
      required this.isEditing,
      required this.saveFailureOrSuccessOption});

  @override
  final Film film;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool isEditing;
  @override
  final Option<Either<FilmFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'FilmFormState(film: $film, showErrorMessages: $showErrorMessages, isSaving: $isSaving, isEditing: $isEditing, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFormState &&
            (identical(other.film, film) ||
                const DeepCollectionEquality().equals(other.film, film)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(film) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isSaving) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      __$SignInFormStateCopyWithImpl<_SignInFormState>(this, _$identity);
}

abstract class _SignInFormState implements FilmFormState {
  const factory _SignInFormState(
      {required Film film,
      required bool showErrorMessages,
      required bool isSaving,
      required bool isEditing,
      required Option<Either<FilmFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_SignInFormState;

  @override
  Film get film => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  Option<Either<FilmFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SignInFormStateCopyWith<_SignInFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
