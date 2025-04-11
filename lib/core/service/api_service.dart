import 'package:dio/dio.dart';

import '../../constans.dart';

class ApiService {
  final String baseUrl = 'https://api.themoviedb.org/3';
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> getTrendingMovies() async {
    Response response = await dio.get('$baseUrl/now_playing?api_key=$apiKey');

    return response.data;
  }
}
