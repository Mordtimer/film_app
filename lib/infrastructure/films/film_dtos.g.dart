// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'film_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FilmItemDto _$_$_FilmItemDtoFromJson(Map<String, dynamic> json) {
  return _$_FilmItemDto(
    id: json['id'] as String,
    title: json['title'] as String,
    grade: json['grade'] as String,
    description: json['description'] as String,
  );
}

Map<String, dynamic> _$_$_FilmItemDtoToJson(_$_FilmItemDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'grade': instance.grade,
      'description': instance.description,
    };
