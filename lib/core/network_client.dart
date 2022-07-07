import 'package:dio/dio.dart';

class NetworkClient {

  // BaseURL of the API
  final String baseUrl = 'https://jsonplaceholder.typicode.com';

  // Dio instance
  final Dio dio = Dio();
}