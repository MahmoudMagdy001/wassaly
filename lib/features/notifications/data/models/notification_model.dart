import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wassaly/features/notifications/domain/entities/notification_entity.dart';

part 'notification_model.freezed.dart';
part 'notification_model.g.dart';

@freezed
abstract class NotificationModel with _$NotificationModel {
  const NotificationModel._();

  const factory NotificationModel({
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @Default(0) int id,
    @Default('') String title,
    @Default('') String body,
    @Default('unknown') String type,
    @Default({}) Map<String, dynamic> data,
    @JsonKey(name: 'is_read') @Default(false) bool isRead,
  }) = _NotificationModel;

  factory NotificationModel.fromJson(Map<String, dynamic> json) =>
      NotificationModel(
        id: int.tryParse(json['id']?.toString() ?? '') ?? 0,
        title: json['title']?.toString() ?? '',
        body: json['body']?.toString() ?? '',
        type: json['type']?.toString() ?? 'unknown',
        data: json['data'] is Map<String, dynamic>
            ? json['data'] as Map<String, dynamic>
            : {},
        isRead: json['is_read'] is bool
            ? json['is_read'] as bool
            : (json['is_read']?.toString() == '1' ||
                json['is_read']?.toString() == 'true'),
        createdAt: json['created_at'] != null
            ? DateTime.parse(json['created_at'].toString())
            : DateTime.now(),
      );

  NotificationEntity toEntity() => NotificationEntity(
        id: id,
        title: title,
        body: body,
        type: type,
        data: data,
        isRead: isRead,
        createdAt: createdAt,
      );
}
