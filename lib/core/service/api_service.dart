import 'package:dio/dio.dart';

import '../../constans.dart';

class ApiService {
  final String baseUrl = 'https://api.themoviedb.org/3';
  final Dio dio;

  ApiService({required this.dio});

  Future<Map<String, dynamic>> getTrendingMovies() async {
    Response response = await dio.get(
        '$baseUrl/movie/now_playing?api_key=0901bbf69b259b0b2c7761fc0f123c77');

    return response.data;
  }
}
