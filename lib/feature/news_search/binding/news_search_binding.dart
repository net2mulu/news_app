import 'package:get/get.dart';
import 'package:news_app/feature/news_search/controller/news_search_controller.dart';

class SearchNewsBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
        Get.put(NewsSearchController());

  }
  
}