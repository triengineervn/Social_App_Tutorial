import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:social_app_tutorial/features/messenger/models/message_model.dart';
import 'package:social_app_tutorial/themes/app_assets.dart';
import 'package:social_app_tutorial/themes/app_colors.dart';
import 'package:social_app_tutorial/themes/app_styles.dart';

import '../../../utils/date_utils.dart';

class MessengerPage extends StatefulWidget {
  const MessengerPage({super.key});

  @override
  State<MessengerPage> createState() => _MessengerPageState();
}

class _MessengerPageState extends State<MessengerPage> {
  List<MessageData> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        actions: <Widget>[
          IconButton(
            icon: Image.asset(AppAssets.ic_plus),
            onPressed: () {
              // handle the press
            },
          ),
        ],
        title: const Text('Messenger'),
      ),
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (context, data) {
          if (users.isNotEmpty) {
            var results = data.data as List<MessageData>;
            return Container(
              color: AppColors.primary,
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: ListView.builder(
                      itemCount: users.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        String fullName = results[index].user!.name.toString();
                        List<String> nameParts = fullName.split(' ');
                        String firstName = nameParts.first;
                        // print(firstName);
                        String status = results[index].user!.status.toString();
                        if (status == 'online') {
                          return Container(
                            margin: const EdgeInsets.only(top: 16),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                AdvancedAvatar(
                                  statusSize: 12,
                                  statusColor: Colors.green,
                                  foregroundDecoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    border: Border.all(
                                      color: AppColors.adding.withOpacity(0.7),
                                      width: 2,
                                    ),
                                  ),
                                  child: Image(
                                    image: NetworkImage(results[index].user!.picture!.thumbnail.toString()),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    firstName,
                                    style: AppStyles.caption11,
                                  ),
                                ),
                              ],
                            ),
                          );
                        } else {
                          return Container(
                            margin: const EdgeInsets.only(top: 16),
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              children: [
                                AdvancedAvatar(
                                  child: Image(
                                    image: NetworkImage(results[index].user!.picture!.thumbnail.toString()),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(vertical: 8),
                                  child: Text(
                                    firstName,
                                    style: AppStyles.caption11,
                                  ),
                                ),
                              ],
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  Expanded(
                    flex: 10,
                    child: ListView.builder(
                      itemCount: users.length,
                      itemBuilder: (context, index) {
                        String userName = results[index].user!.name.toString();
                        String textInbox = results[index].text.toString();
                        String timeInbox = results[index].createdAt!.toString();
                        var unReadCount = results[index].unreadCount!;
                        String status = results[index].user!.status.toString();
                        //sort List???
                        return ListTile(
                          leading: AdvancedAvatar(
                            statusColor: status == 'online' ? AppColors.adding : null,
                            statusSize: 12,
                            children: [
                              if (unReadCount != 0)
                                AlignCircular(
                                  alignment: Alignment.bottomRight,
                                  child: Container(
                                    width: 18,
                                    height: 18,
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.white,
                                        width: 0.5,
                                      ),
                                      color: AppColors.destructive,
                                      shape: BoxShape.circle,
                                    ),
                                    child: Text(
                                      '$unReadCount',
                                      style: AppStyles.caption13,
                                    ),
                                  ),
                                ),
                            ],
                            child: Image(
                              image: NetworkImage(results[index].user!.picture!.thumbnail.toString()),
                            ),
                          ),
                          title: Text(
                            userName,
                            style: AppStyles.body15Bold,
                          ),
                          subtitle: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              textInbox,
                              style: AppStyles.body15,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                            ),
                          ),
                          trailing: Text(
                            getHourAndMinute(timeInbox),
                            style: AppStyles.caption13.copyWith(color: AppColors.gray1),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Future<List<MessageData>> ReadJsonData() async {
    final jsondata = await rootBundle.loadString('assets/data/chat_data.json');
    final userData = await json.decode(jsondata);
    var list = userData["results"] as List<dynamic>;
    return users = list.map((e) => MessageData.fromJson(e)).toList();
  }
}
