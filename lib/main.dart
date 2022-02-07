import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:news_app/feature/news_headline/binding/news_headline_binding.dart';
import 'package:news_app/feature/news_headline/view/news_headline_view.dart';
import 'package:news_app/feature/news_search/view/search_news_view.dart';
import 'feature/news_search/binding/news_search_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        primarySwatch: Colors.orange,
        visualDensity: VisualDensity.adaptivePlatformDensity
      ),
     initialRoute: "/newsHeadLine",
      getPages: [
        GetPage(name: "/newsHeadLine", page: () =>  const NewsHeadLinesView(), binding: NewsHeadlineBinding()),
        GetPage(name: "/searchNews", page: () =>  const SearchNews(), binding:  SearchNewsBinding()),
      ],
    );
  }
}