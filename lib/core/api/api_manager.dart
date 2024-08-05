import 'package:dio/dio.dart';
import 'package:movies_app/core/components/constants.dart';

class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

   Future<Response> getData(String endPoint, {Map<String, dynamic>? param}) {
    return dio.get(Constants.BASE_URL + endPoint, queryParameters: param);
  }

  Future<Response> getPost(String endPoint, {Map<String, dynamic>? body}) {
    return dio.get(Constants.BASE_URL + endPoint, data: body);
  }

  static getMoviesData(moviesData) {}
}
