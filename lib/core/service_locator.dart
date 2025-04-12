import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../featureds/home/data/repos/movie_repo.dart';
import '../featureds/home/data/repos/movie_repo_impl.dart';
import 'service/api_service.dart';

final getIt = GetIt.instance;

void setupGetIt() {
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio: Dio()));
  getIt.registerLazySingleton<MovieRepoImpl>(
      () => MovieRepoImpl(service: getIt<ApiService>()));
}
