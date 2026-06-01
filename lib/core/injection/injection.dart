import 'package:get_it/get_it.dart';

import 'parts/bloc_injection.dart';
import 'parts/datasource_injection.dart';
import 'parts/repository_injection.dart';
import 'parts/usecase_injection.dart';

final sl = GetIt.instance;

void initDependencies() {
  initDataSourceDependencies();
  initRepositoryDependencies();
  initUseCaseDependencies();
  initBlocDependencies();
}
