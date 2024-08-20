import 'package:dio/dio.dart';
import 'package:movies_app/core/components/constants.dart';
import 'package:movies_app/core/utils/app_strings.dart';

class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio();
  }

   Future<Response> getData(String endPoint, {Map<String, dynamic>? param}) {
    return dio.get(Constants.BASE_URL + endPoint,
        options: Options(headers: {"Authorization": AppString.apikey}),
        queryParameters: param);
  }

  Future<Response> getPost(String endPoint, {Map<String, dynamic>? body}) {
    return dio.get(Constants.BASE_URL + endPoint,
        options: Options(headers: {"Authorization": AppString.apikey}),
        data: body);
  }

  static getMoviesData(moviesData) {}
}
