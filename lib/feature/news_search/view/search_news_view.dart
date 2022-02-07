import 'package:flutter/material.dart';
import 'package:news_app/core/widget/drawer.dart';

class SearchNews extends StatelessWidget {
  const SearchNews({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Search News"),),
        drawer: getAppDrawer(),
        body: Container(),
    );
  }
}