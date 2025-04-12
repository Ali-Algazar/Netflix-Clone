part of 'newest_movie_cubit.dart';

@immutable
sealed class NewestMovieState {}

// final class NewestMovieInitial extends NewestMovieState {}

final class NewestMovieFailuar extends NewestMovieState {
  final Failure failure;

  NewestMovieFailuar({required this.failure});
}

final class NewestMovieLoading extends NewestMovieState {}

final class NewestMovieSuccess extends NewestMovieState {
  final List<Movie> movies;

  NewestMovieSuccess({required this.movies});
}
