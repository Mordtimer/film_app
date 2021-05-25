part of 'film_form_bloc.dart';

@freezed
class FilmFormState with _$FilmFormState {
  const factory FilmFormState({
    required Film film,
    required bool showErrorMessages,
    required bool isSaving,
    required bool isEditing,
    required Option<Either<FilmFailure, Unit>> saveFailureOrSuccessOption,
  }) = _SignInFormState;

  factory FilmFormState.initial() => FilmFormState(
      film: Film.newEmpty(),
      showErrorMessages: false,
      isSaving: false,
      isEditing: false,
      saveFailureOrSuccessOption: none());
}
