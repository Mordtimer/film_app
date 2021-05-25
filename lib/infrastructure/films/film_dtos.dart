import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:films_app/domain/auth/unique_id.dart';
import 'package:films_app/domain/films/film.dart';
import 'package:films_app/domain/films/film_desc.dart';
import 'package:films_app/domain/films/film_grade.dart';
import 'package:films_app/domain/films/film_title.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'film_dtos.freezed.dart';
part 'film_dtos.g.dart';

@freezed
class FilmItemDto with _$FilmItemDto {
  
  const factory FilmItemDto({
    required String id,
    required String title,
    required String grade,
    required String description,
  }) = _FilmItemDto;

  factory FilmItemDto.fromDomain(Film film) {
    return FilmItemDto(
        id: film.id.getOrCrash(),
        title: film.title.getOrCrash(),
        grade: film.grade.getOrCrash(),
        description: film.description.getOrCrash());
  }

  factory FilmItemDto.fromJson(Map<String, dynamic> json) =>
      _$FilmItemDtoFromJson(json);

  
  factory FilmItemDto.fromFirestore(QueryDocumentSnapshot<Map<String,dynamic>> doc) {
    return FilmItemDto.fromJson(doc.data());
  }
}

extension FilmItemDtoX on FilmItemDto {
  Film toDomain() {
    return Film(
        id: UniqueId.fromUniqueString(id),
        title: FilmTitle(title),
        description: FilmDesc(description),
        grade: FilmGrade(grade));
  }
}