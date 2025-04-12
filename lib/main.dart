import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/service_locator.dart';
import 'core/theme/app_theme.dart';
import 'core/routes/app_routes.dart';
import 'featureds/home/data/repos/movie_repo_impl.dart';
import 'featureds/home/presentation/manger/cubit/newest_movie_cubit.dart';
import 'featureds/splash/presentation/views/splash_view.dart';

void main() {
  setupGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NewestMovieCubit(movieRepo: getIt<MovieRepoImpl>())
        ..getNewestMovies(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.darkTheme,
        onGenerateRoute: AppRoutes.onGenerateRoute,
      ),
    );
  }
}
