import 'package:flutter/material.dart';
import 'package:get/get.dart';

getAppDrawer() {
  return Drawer(
          child: ListView(
            children: [
            ListTile(
              title: const Text('Head Lines'),
              onTap: (){
                Get.toNamed("/newsHeadLine");
              },
              leading: const Icon(Icons.contact_page_outlined),
             ),
              ListTile(
              title: const Text('Search'),
              onTap: (){
                Get.toNamed("/searchNews");
              },
              leading: const Icon(Icons.search),
             ),
          ],),);
}