import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_advanced_avatar/flutter_advanced_avatar.dart';
import 'package:social_app_tutorial/features/messenger/models/message_model.dart';
import 'package:social_app_tutorial/themes/app_colors.dart';
import 'package:social_app_tutorial/themes/app_styles.dart';
import 'package:social_app_tutorial/utils/date_utils.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MessageData> users = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      appBar: AppBar(
        forceMaterialTransparency: true,
      ),
      extendBodyBehindAppBar: true,
      body: FutureBuilder(
        future: ReadJsonData(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> data) {
          if (users.isNotEmpty) {
            var results = data.data as List<MessageData>;
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 8),
                    Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Expanded(
                            flex: 5,
                            child: SearchBar(
                              constraints: const BoxConstraints(minHeight: 36),
                              backgroundColor: MaterialStatePropertyAll(
                                AppColors.primary2.withOpacity(0.5),
                              ),
                              padding: const MaterialStatePropertyAll(
                                EdgeInsets.only(left: 8),
                              ),
                              leading: const Icon(
                                Icons.search,
                                color: AppColors.gray3,
                              ),
                              hintText: 'Search',
                              textStyle: const MaterialStatePropertyAll(
                                TextStyle(color: AppColors.gray1),
                              ),
                            ),
                          ),
                          const Expanded(
                            child: AdvancedAvatar(
                              size: 36,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Stories',
                            style: AppStyles.headline1,
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text(
                              'View all',
                              style: AppStyles.body15.copyWith(
                                color: AppColors.destructive,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 3,
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
                            return Container();
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 8),
                    Expanded(
                      flex: 13,
                      child: ListView.builder(
                        itemCount: users.length,
                        itemBuilder: (context, index) {
                          String userName = results[index].user!.name.toString();
                          String textInbox = results[index].text.toString();
                          String timeInbox = results[index].createdAt!.toString();
                          var unReadCount = results[index].unreadCount!;
                          String status = results[index].user!.status.toString();

                          return Card(
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32),
                            ),
                            child: Container(
                              color: AppColors.adding,
                              child: Text('hello'),
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
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

  Future<List<MessageData>> ReadJsonData() async {
    final jsondata = await rootBundle.loadString('assets/data/chat_data.json');
    final userData = await json.decode(jsondata);
    var list = userData["results"] as List<dynamic>;
    return users = list.map((e) => MessageData.fromJson(e)).toList();
  }
}
