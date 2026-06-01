import 'package:wassaly/core/utils/typedefs.dart';

abstract class FcmTokenRepository {
  FutureEither<void> registerFcmToken({
    required String token,
    required String deviceId,
    required int userId,
  });
}
