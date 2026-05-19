import 'package:wassaly/core/imports/imports.dart';
import 'package:wassaly/features/app_reviews/data/models/app_review_model.dart';

abstract class AppReviewsRemoteDataSource {
  Future<List<AppReviewModel>> getAppReviews();
  Future<AppReviewModel> addAppReview(int rating, String comment);
  Future<AppReviewModel> updateAppReview(
      int reviewId, int rating, String comment);
}

class AppReviewsRemoteDataSourceImpl implements AppReviewsRemoteDataSource {
  final DioService _dioService;

  const AppReviewsRemoteDataSourceImpl(this._dioService);

  @override
  Future<List<AppReviewModel>> getAppReviews() async {
    final response = await _dioService.get('/api/reviews/all/general/get');

    return response.fold(
      (failure) => throw failure,
      (response) {
        final responseData = response.data as Map<String, dynamic>;
        final status = responseData['status'] as bool? ?? false;
        final message = responseData['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }

        final data = responseData['data'];
        if (data == null) {
          return <AppReviewModel>[];
        }

        final List<dynamic> list = data as List<dynamic>;
        return list
            .map((e) => AppReviewModel.fromJson(e as Map<String, dynamic>))
            .toList();
      },
    );
  }

  @override
  Future<AppReviewModel> addAppReview(int rating, String comment) async {
    final response = await _dioService.post(
      '/api/reviews/general/create',
      data: {
        'rating': rating,
        'comment': comment,
      },
    );

    return response.fold(
      (failure) => throw failure,
      (res) {
        final responseData = res.data as Map<String, dynamic>;
        final status = responseData['status'] as bool? ?? false;
        final message = responseData['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }

        return AppReviewModel.fromJson(
            responseData['data'] as Map<String, dynamic>);
      },
    );
  }

  @override
  Future<AppReviewModel> updateAppReview(
      int reviewId, int rating, String comment) async {
    final response = await _dioService.put(
      '/api/reviews/update/general',
      data: {
        'review_id': reviewId,
        'rating': rating,
        'comment': comment,
      },
    );

    return response.fold(
      (failure) => throw failure,
      (res) {
        final responseData = res.data as Map<String, dynamic>;
        final status = responseData['status'] as bool? ?? false;
        final message = responseData['message'] as String? ?? '';

        if (!status) {
          throw ServerFailure(message);
        }

        return AppReviewModel.fromJson(
            responseData['data'] as Map<String, dynamic>);
      },
    );
  }
}
