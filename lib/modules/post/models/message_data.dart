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

class User {
  String? gender;
  String? name;
  String? email;
  String? dob;
  String? registered;
  String? phone;
  String? status;
  Picture? picture;

  User(
      {this.gender,
      this.name,
      this.email,
      this.dob,
      this.registered,
      this.phone,
      this.status,
      this.picture});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      gender: json['gender'],
      name: json['name'],
      email: json['email'],
      dob: json['dob'],
      registered: json['registered'],
      phone: json['phone'],
      status: json['status'],
      picture:
          (json['picture'] != null ? Picture.fromJson(json['picture']) : null),
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['gender'] = gender;
    data['name'] = name;
    data['email'] = email;
    data['dob'] = dob;
    data['registered'] = registered;
    data['phone'] = phone;
    data['status'] = status;
    data['picture'] = picture?.toJson();
    return data;
  }
}

class Picture {
  String? large;
  String? medium;
  String? thumbnail;

  Picture({required this.large, required this.medium, required this.thumbnail});

  factory Picture.fromJson(Map<String, dynamic> json) {
    return Picture(
      large: json['large'],
      medium: json['medium'],
      thumbnail: json['thumbnail'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['large'] = large;
    data['medium'] = medium;
    data['thumbnail'] = thumbnail;
    return data;
  }
}
