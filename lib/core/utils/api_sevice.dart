import 'package:dio/dio.dart';

class ApiServise {
  final Dio _dio;
  final String baseUrl = "https://www.googleapis.com/books/v1/";

  ApiServise(this._dio);

 Future<Map<String,dynamic>> get({required String endPoint}) async {
    var response = await _dio.get("$baseUrl$endPoint");

    return response.data;
  }
}
