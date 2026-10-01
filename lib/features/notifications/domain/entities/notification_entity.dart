import 'package:freezed_annotation/freezed_annotation.dart';

part 'notification_entity.freezed.dart';

@freezed
abstract class NotificationEntity with _$NotificationEntity {
  const factory NotificationEntity({
    required int id,
    required String title,
    required String body,
    required String type,
    required Map<String, dynamic> data,
    required bool isRead,
    required DateTime createdAt,
  }) = _NotificationEntity;
}
