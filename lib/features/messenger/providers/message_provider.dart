import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:social_app_tutorial/features/messenger/models/message_model.dart';

class MessageProvider {
  Future<List<MessageData>> ReadJsonData() async {
    final jsondata = await rootBundle.loadString('assets/data/chat_data.json');
    final userData = await json.decode(jsondata);
    var list = userData["results"] as List<dynamic>;
    return list.map((e) => MessageData.fromJson(e)).toList();
  }
}
