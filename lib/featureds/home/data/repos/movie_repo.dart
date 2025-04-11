import 'package:dartz/dartz.dart';

import '../../../../core/error/failer.dart';
import '../Models/movie.dart';

abstract class MovieRepo {
  Future<Either<Failure, List<Movie>>> getTrendingMovies();
}
