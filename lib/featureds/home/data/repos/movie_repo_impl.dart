import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/error/failer.dart';
import '../../../../core/service/api_service.dart';
import '../Models/movie.dart';
import 'movie_repo.dart';

class MovieRepoImpl extends MovieRepo {
  ApiService service;

  MovieRepoImpl({required this.service});

  @override
  Future<Either<Failure, List<Movie>>> getTrendingMovies() async {
    try {
      var result = await service.getTrendingMovies();
      List<Movie> movieList = [];
      for (var movie in result['results']) {
        movieList.add(Movie.fromJson(movie));
      }

      return right(movieList);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioError(e.type));
      }
      return left(ServerFailure(message: 'there wes an error'));
    }
  }
}
