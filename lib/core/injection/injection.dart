import 'package:get_it/get_it.dart';
import 'package:wassaly/features/auth/domain/repositories/auth_repository.dart';
import 'package:wassaly/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:wassaly/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:wassaly/features/auth/domain/usecases/login_usecase.dart';
import 'package:wassaly/features/auth/presentation/bloc/login_bloc.dart';

final sl = GetIt.instance;

Future<void> initDependencies() async {
  // Blocs
  sl.registerFactory(() => LoginBloc(loginUseCase: sl()));

  // UseCases
  sl.registerLazySingleton(() => LoginUseCase(sl()));

  // Repositories
  sl.registerLazySingleton<AuthRepository>(() => AuthRepositoryImpl(sl()));

  // DataSources
  sl.registerLazySingleton<AuthRemoteDataSource>(() => AuthRemoteDataSourceImpl());
}
