import 'package:dio/dio.dart';

class ApiHelper {
  final String _baseUrl = 'https://newsapi.org/v2';
  final Dio dio;

  const ApiHelper({required this.dio});

  Future<Map<String, dynamic>> get({required String endPoint}) async {
    Response response = await dio.get(
      '$_baseUrl$endPoint&apiKey=fbe82512285b4dd8bd11fa6f7c7c9f91',
    );
    return response.data;
  }
}
