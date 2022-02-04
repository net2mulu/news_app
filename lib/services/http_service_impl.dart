import 'package:dio/dio.dart';
import 'package:news_app/services/http_service.dart';


const BASE_URL = "https://newsapi.org/v2";
const API_KEY = "836dba456ade4c9d83342f8eb0c231bb";


class HttpServiceImpl implements HttpService{
  Dio? _dio;
  @override
  Future getRequest(String url) async {
    Response response;
    try {
       response = _dio?.get(url) as Response;
    } on DioError catch (e) {
        print(e);
        throw Exception(e.message);
    }

    return response;
  }
  initializeInterceptors() {
    _dio?.interceptors.add(InterceptorsWrapper(
      onError: (DioError e, handler) {
          print(e.message);
      },
      onRequest: (options, handler){
        print("${options.method} | ${options.path}");
      },
      onResponse:  (response,handler) {
        print("${response.statusCode} ${response.statusMessage} ${response.data}");
      }
    ));
  }

  @override
  void init() {
    _dio = Dio(BaseOptions(
      baseUrl: BASE_URL,
      headers: {"Authorization": "Bearer $API_KEY"}
    ));

    initializeInterceptors();
  }
  
}