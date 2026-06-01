import 'package:equatable/equatable.dart';

class NotificationEntity extends Equatable {
  final String id;
  final String title;
  final String body;
  final Map<String, dynamic> payload;
  final DateTime receivedAt;
  final bool read;
  final String? imageUrl;
  final String? deepLink;

  const NotificationEntity({
    required this.id,
    required this.title,
    required this.body,
    this.payload = const {},
    required this.receivedAt,
    this.read = false,
    this.imageUrl,
    this.deepLink,
  });

  NotificationEntity copyWith({
    String? id,
    String? title,
    String? body,
    Map<String, dynamic>? payload,
    DateTime? receivedAt,
    bool? read,
    String? imageUrl,
    String? deepLink,
  }) {
    return NotificationEntity(
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

  factory NotificationEntity.fromJson(Map<String, dynamic> json) {
    return NotificationEntity(
      id: json['id'] as String? ??
          DateTime.now().millisecondsSinceEpoch.toString(),
      title: json['title'] as String? ?? 'New Notification',
      body: json['body'] as String? ?? '',
      payload: Map<String, dynamic>.from(json['payload'] ?? {}),
      receivedAt: DateTime.tryParse(json['receivedAt'] as String? ?? '') ??
          DateTime.now(),
      read: json['read'] as bool? ?? false,
      imageUrl: json['imageUrl'] as String?,
      deepLink: json['deepLink'] as String?,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        body,
        payload,
        receivedAt,
        read,
        imageUrl,
        deepLink,
      ];
}
