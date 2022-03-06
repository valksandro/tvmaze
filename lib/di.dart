import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tvmaze/features/main/bloc/series/series_bloc.dart';
import 'core/db/database.dart';
import 'features/main/bloc/episodes/episodes_bloc.dart';
import 'features/main/bloc/favorites/favorites_bloc.dart';
import 'features/main/data/datasources/series_remote_data_source.dart';
import 'features/main/data/repositories/favorites_repository_impl.dart';
import 'features/main/data/repositories/series_repository_impl.dart';

final sl = GetIt.instance;

Future<void> init() async {
  sl.registerLazySingleton(
    () => SeriesBloc(sl()),
  );

  sl.registerLazySingleton(
    () => EpisodesBloc(sl()),
  );

  sl.registerLazySingleton(
    () => FavoritesBloc(sl(), sl()),
  );

  sl.registerLazySingleton<SeriesRepository>(
    () => SeriesRepositoryImpl(
      remoteDataSource: sl(),
    ),
  );

  sl.registerLazySingleton<FavoritesRepository>(
    () => FavoritesRepositoryImpl(
      appDatabase: sl(),
    ),
  );

  sl.registerLazySingleton<SeriesRemoteDataSource>(
    () => SeriesRemoteDataSourceImpl(
      dio: sl(),
    ),
  );

  sl.registerLazySingleton(() => AppDatabase.single());
  sl.registerLazySingleton(() => Dio(BaseOptions(
        baseUrl: 'http://api.tvmaze.com',
        connectTimeout: 5000,
        receiveTimeout: 100000,
        contentType: Headers.jsonContentType,
        responseType: ResponseType.json,
      )));
}
