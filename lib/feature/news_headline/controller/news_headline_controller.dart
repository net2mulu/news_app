import 'package:get/get.dart';
import 'package:news_app/core/model/article.dart';
import 'package:news_app/core/repository/news.repo.impl.dart';
import 'package:news_app/core/repository/news_repo.dart';

class NewsHeadlineConroller extends GetxController {
 late NewsRepo _newsRepo;

 NewsHeadlineConroller(){
   _newsRepo = Get.find<NewsRepoImpl>();
   loadNewsHeadLine();
 } 

 RxBool isLoading = false.obs;

 RxList<Article>? articles;

 loadNewsHeadLine() async {
    
   final result = await _newsRepo.getNewsHeadLine();
   if(result != null){
     articles = result.obs;
     print("isLoading");
   }else {
     print("No Dataaaaaaaaaaa");
   }
 }

 showLoading(){
   isLoading.toggle();
 }
 hideLoading(){
    isLoading.toggle();

 }
}