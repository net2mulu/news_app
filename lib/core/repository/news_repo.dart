import 'package:news_app/core/model/article.dart';

abstract class NewsRepo {
  Future<List<Article>?> getNewsHeadLine();
  Future<List<Article>?> getSearchedNews(String query);
}