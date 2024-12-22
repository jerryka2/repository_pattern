import 'package:get_it/get_it.dart';
import 'package:repository_pattern_di/data_source/local/local_data_source.dart';
import 'package:repository_pattern_di/data_source/remote/remote_data_source.dart';
import 'package:repository_pattern_di/repository/user_repository.dart';

final getIt = GetIt.instance;

void initModulue() {
  // Father
  getIt.registerLazySingleton<RemoteDataSource>(() => RemoteDataSource());
  // Mother
  getIt.registerLazySingleton<LocalDataSource>(() => LocalDataSource());
  //  Child
  getIt.registerLazySingleton<UserRepository>(
    () => UserRepository(
      remoteDataSource: getIt(),
      localDataSource: getIt(),
    ),
  );
}
