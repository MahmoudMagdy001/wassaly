import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/auth/data/models/fcm_token_request_model.dart';

abstract class FcmTokenRemoteDataSource {
  Future<void> registerFcmToken(FcmTokenRequestModel model);
}

class FcmTokenRemoteDataSourceImpl implements FcmTokenRemoteDataSource {
  final DioService _dioService;

  const FcmTokenRemoteDataSourceImpl(this._dioService);

  @override
  Future<void> registerFcmToken(FcmTokenRequestModel model) async {
    final response = await _dioService.post(
      '/api/fcm-token-user',
      data: model.toJson(),
    );

    response.fold(
      (failure) => throw failure,
      (res) {
        final responseData = res.data as Map<String, dynamic>?;
        final status = responseData?['status'] as bool? ?? true;
        final message = responseData?['message'] as String? ?? '';
        if (!status && message.isNotEmpty) {
          throw ServerFailure(message);
        }
      },
    );
  }
}
