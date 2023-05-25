// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

News _$NewsFromJson(Map<String, dynamic> json) => News(
      name: json['name'] as String,
      imageURL: json['imageURL'] as String,
      active: json['active'] as bool,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      rating: (json['rating'] as num).toDouble(),
    );

const _$NewsFieldMap = <String, String>{
  'name': 'name',
  'imageURL': 'imageURL',
  'active': 'active',
  'tags': 'tags',
  'rating': 'rating',
};

Map<String, dynamic> _$NewsToJson(News instance) => <String, dynamic>{
      'name': instance.name,
      'imageURL': instance.imageURL,
      'active': instance.active,
      'tags': instance.tags,
      'rating': instance.rating,
    };
