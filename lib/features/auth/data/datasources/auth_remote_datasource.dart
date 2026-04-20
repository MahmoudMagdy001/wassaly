import 'package:wassaly/core/utils/failure.dart';
import 'package:wassaly/features/auth/data/models/user_model.dart';

abstract class AuthRemoteDataSource {
  Future<UserModel> login({
    required String email,
    required String password,
  });

  Future<UserModel> loginWithGoogle();

  Future<UserModel> loginWithFacebook();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  // TODO: Inject Dio client here when API is ready
  // final Dio _dio;
  // const AuthRemoteDataSourceImpl(this._dio);

  @override
  Future<UserModel> login({
    required String email,
    required String password,
  }) async {
    // TODO: Replace with actual API call
    // Simulating network delay
    await Future<void>.delayed(const Duration(seconds: 1));

    // Mock success response
    if (email.isNotEmpty && password.length >= 6) {
      return UserModel(
        id: '1',
        email: email,
        name: 'Test User',
        phone: '+1234567890',
        avatarUrl: null,
        token: 'mock_token_12345',
      );
    }

    throw const ServerFailure('Invalid credentials');
  }

  @override
  Future<UserModel> loginWithGoogle() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return const UserModel(
      id: 'google_1',
      email: 'user@gmail.com',
      name: 'Google User',
      phone: null,
      avatarUrl: null,
      token: 'google_mock_token',
    );
  }

  @override
  Future<UserModel> loginWithFacebook() async {
    await Future<void>.delayed(const Duration(seconds: 1));
    return const UserModel(
      id: 'fb_1',
      email: 'user@facebook.com',
      name: 'Facebook User',
      phone: null,
      avatarUrl: null,
      token: 'fb_mock_token',
    );
  }
}
