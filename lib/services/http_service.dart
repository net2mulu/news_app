import 'package:dio/dio.dart';

abstract class HttpService {
  void init();

  Future getRequest(String url); 
}