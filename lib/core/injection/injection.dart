import 'package:get_it/get_it.dart';

import 'package:wassaly/core/injection/parts/bloc_injection.dart';
import 'package:wassaly/core/injection/parts/datasource_injection.dart';
import 'package:wassaly/core/injection/parts/repository_injection.dart';
import 'package:wassaly/core/injection/parts/usecase_injection.dart';

final sl = GetIt.instance;

void initDependencies() {
  initDataSourceDependencies();
  initRepositoryDependencies();
  initUseCaseDependencies();
  initBlocDependencies();
}
