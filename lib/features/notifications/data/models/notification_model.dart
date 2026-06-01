// lib/features/notifications/data/models/notification_model.dart
import 'package:equatable/equatable.dart';

class NotificationModel extends Equatable {
  final String id;
  final String title;
  final String body;
  final Map<String, dynamic> payload;
  final DateTime receivedAt;
  final bool read;
  final String? imageUrl;
  final String? deepLink;

  const NotificationModel({
    required this.id,
    required this.title,
    required this.body,
    this.payload = const {},
    required this.receivedAt,
    this.read = false,
    this.imageUrl,
    this.deepLink,
  });

  NotificationModel copyWith({
    String? id,
    String? title,
    String? body,
    Map<String, dynamic>? payload,
    DateTime? receivedAt,
    bool? read,
    String? imageUrl,
    String? deepLink,
  }) {
    return NotificationModel(
      id: id ?? this.id,
      title: title ?? this.title,
      body: body ?? this.body,
      payload: payload ?? this.payload,
      receivedAt: receivedAt ?? this.receivedAt,
      read: read ?? this.read,
      imageUrl: imageUrl ?? this.imageUrl,
      deepLink: deepLink ?? this.deepLink,
    );
  }

  factory NotificationModel.fromRemoteMessage(Map<String, dynamic> data) {
    return NotificationModel(
      id: data['id'] ?? DateTime.now().millisecondsSinceEpoch.toString(),
      title: data['title'] ?? 'New Notification',
      body: data['body'] ?? '',
      payload: data,
      receivedAt: DateTime.now(),
      imageUrl: data['image_url'],
      deepLink: data['deep_link'],
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'body': body,
        'payload': payload,
        'receivedAt': receivedAt.toIso8601String(),
        'read': read,
        'imageUrl': imageUrl,
        'deepLink': deepLink,
      };

  @override
  List<Object?> get props =>
      [id, title, body, payload, receivedAt, read, imageUrl, deepLink];
}
