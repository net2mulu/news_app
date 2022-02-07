import 'package:get/get.dart';
import 'package:news_app/core/repository/news.repo.impl.dart';
import 'package:news_app/feature/news_headline/controller/news_headline_controller.dart';

class NewsHeadlineBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(NewsRepoImpl());
    Get.put(NewsHeadlineConroller());
  }
  
}