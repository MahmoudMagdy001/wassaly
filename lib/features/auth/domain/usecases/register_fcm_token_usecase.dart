import 'package:wassaly/core/utils/typedefs.dart';
import 'package:wassaly/features/auth/domain/repositories/fcm_token_repository.dart';

class FcmTokenParams {
  final String token;
  final String deviceId;
  final int userId;

  const FcmTokenParams({
    required this.token,
    required this.deviceId,
    required this.userId,
  });
}

class RegisterFcmTokenUseCase {
  final FcmTokenRepository _repository;

  const RegisterFcmTokenUseCase(this._repository);

  FutureEither<void> call(FcmTokenParams params) {
    return _repository.registerFcmToken(
      token: params.token,
      deviceId: params.deviceId,
      userId: params.userId,
    );
  }
}
