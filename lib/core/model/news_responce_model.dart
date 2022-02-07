import 'package:json_annotation/json_annotation.dart';
import 'package:news_app/core/model/article.dart';

part 'news_responce_model.g.dart';

@JsonSerializable(nullable: false)
class NewsResponce {
  
  NewsResponce();

  @JsonKey(name: "status")
  String? status;

  @JsonKey(name: "totalResults")
  int? totalResults;

  @JsonKey(name: "articles")
  late List<Article> articles;

  
  factory NewsResponce.fromJson(Map<String, dynamic> json) => _$NewsResponceFromJson(json);
  Map<String, dynamic> toJson() => _$NewsResponceToJson(this);

}