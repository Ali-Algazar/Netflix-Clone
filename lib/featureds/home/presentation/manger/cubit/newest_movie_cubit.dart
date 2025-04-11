import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../../../core/error/failer.dart';
import '../../../data/Models/movie.dart';
import '../../../data/repos/movie_repo.dart';

part 'newest_movie_state.dart';

class NewestMovieCubit extends Cubit<NewestMovieState> {
  NewestMovieCubit({required this.movieRepo}) : super(NewestMovieInitial());
  MovieRepo movieRepo;

  Future<void> getNewestMovies() async {
    emit(NewestMovieLoading());
    var result = await movieRepo.getTrendingMovies();
    result.fold((failure) => emit(NewestMovieFailuar(failure: failure)),
        (movies) => emit(NewestMovieSuccess(movies: movies)));
  }
}
