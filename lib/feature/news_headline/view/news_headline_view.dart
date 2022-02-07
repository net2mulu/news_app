import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/core/widget/drawer.dart';
import 'package:news_app/feature/news_headline/controller/news_headline_controller.dart';

class NewsHeadLinesView extends StatelessWidget {
  const NewsHeadLinesView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<NewsHeadlineConroller>();
    return Scaffold(
        appBar: AppBar(title: const Text("News Headline"),),
        drawer: getAppDrawer(),
        // body: Obx(() {
        //   return controller.isLoading.isTrue
        //    ? const Center(
        //      child: CircularProgressIndicator(),
        //      )
        //    : Container(
        //     margin: const EdgeInsets.all(10),
        //     child: ListView.separated(
        //       itemBuilder: (context, index) {
        //         return Column(
        //           crossAxisAlignment: CrossAxisAlignment.center,
        //           children: [
        //             Text(controller.articles![index].title, style: const TextStyle(fontSize: 16.6,fontWeight: FontWeight.bold ),)
        //           ],
        //         );
        //       },
        //        separatorBuilder: (context,index) => const Divider(),
        //         itemCount: controller.articles?.length
        //         ),
        //   ); 
        // })
    );
  }
}