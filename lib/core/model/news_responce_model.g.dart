// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_responce_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsResponce _$NewsResponceFromJson(Map<String, dynamic> json) => NewsResponce()
  ..status = json['status'] as String?
  ..totalResults = json['totalResults'] as String?
  ..articles = (json['articles'] as List<dynamic>)
      .map((e) => Article.fromJson(e as Map<String, dynamic>))
      .toList();

Map<String, dynamic> _$NewsResponceToJson(NewsResponce instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
