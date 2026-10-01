import 'package:freezed_annotation/freezed_annotation.dart';

part 'failure.freezed.dart';

@freezed
sealed class Failure with _$Failure {
  const Failure._();

  const factory Failure.server(String message, {dynamic error}) = ServerFailure;
  const factory Failure.cache(String message, {dynamic error}) = CacheFailure;
  const factory Failure.network(String message, {dynamic error}) = NetworkFailure;
  const factory Failure.notFound(String message, {dynamic error}) = NotFoundFailure;
  const factory Failure.unknown(String message, {dynamic error}) = UnknownFailure;
  const factory Failure.permission(String message, {dynamic error}) = PermissionFailure;

  @override
  String toString() => message;
}
