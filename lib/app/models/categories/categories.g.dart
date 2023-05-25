// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'categories.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Categories _$CategoriesFromJson(Map<String, dynamic> json) => Categories(
      name: json['name'] as String,
      imageURL: json['imageURL'] as String,
      active: json['active'] as bool,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      rating: (json['rating'] as num).toDouble(),
    );

const _$CategoriesFieldMap = <String, String>{
  'name': 'name',
  'imageURL': 'imageURL',
  'active': 'active',
  'tags': 'tags',
  'rating': 'rating',
};

Map<String, dynamic> _$CategoriesToJson(Categories instance) =>
    <String, dynamic>{
      'name': instance.name,
      'imageURL': instance.imageURL,
      'active': instance.active,
      'tags': instance.tags,
      'rating': instance.rating,
    };
