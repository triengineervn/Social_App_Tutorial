import 'package:social_app_tutorial/models/user_model.dart';

class MessageData {
  String? id;
  String? text;
  User? user;
  int? replyCount;
  int? unreadCount;
  String? createdAt;

  MessageData(
      {this.id,
      this.text,
      this.user,
      this.replyCount,
      this.unreadCount,
      this.createdAt});

  factory MessageData.fromJson(Map<String, dynamic> json) {
    return MessageData(
      id: json['id'],
      text: json['text'],
      user: json['user'] != null ? User.fromJson(json['user']) : null,
      replyCount: json['reply_count'],
      unreadCount: json['unread_count'],
      createdAt: json['created_at'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['text'] = text;
    if (user != null) {
      data['user'] = user?.toJson();
    }
    data['reply_count'] = replyCount;
    data['unread_count'] = unreadCount;
    data['created_at'] = createdAt;
    return data;
  }
}
