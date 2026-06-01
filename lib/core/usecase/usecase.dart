import 'package:wassaly/core/utils/typedefs.dart';

abstract class BaseUseCase<Type, Params> {
  FutureEither<Type> call(Params params);
}

class NoParams {
  const NoParams();
}
