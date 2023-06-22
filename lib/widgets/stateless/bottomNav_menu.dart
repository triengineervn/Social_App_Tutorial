// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:social_app_tutorial/features/post/pages/home_page.dart';
import 'package:social_app_tutorial/features/messenger/pages/messenger_page.dart';
import 'package:social_app_tutorial/features/notification/pages/notification_page.dart';
import 'package:social_app_tutorial/features/profile/pages/profile_page.dart';
import 'package:social_app_tutorial/features/stream/pages/stream_page.dart';
import 'package:social_app_tutorial/themes/app_assets.dart';
import 'package:social_app_tutorial/themes/app_colors.dart';
import 'package:social_app_tutorial/themes/app_styles.dart';

class BottomNavMenu extends StatefulWidget {
  const BottomNavMenu({super.key});

  @override
  State<BottomNavMenu> createState() => _BottomNavMenuState();
}

class _BottomNavMenuState extends State<BottomNavMenu> {
  int pageIndex = 0;
  final pages = [
    const HomePage(),
    const StreamPage(),
    const MessengerPage(),
    const NotificationPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: buildBottomNav(context),
    );
  }

  buildBottomNav(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Container(
        color: AppColors.primary,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      pageIndex = 0;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.ic_home,
                      color: pageIndex == 0
                          ? AppColors.destructive
                          : AppColors.gray1,
                    ),
                    Text(
                      'Home',
                      style: AppStyles.caption11.copyWith(
                        fontSize: 10,
                        color: pageIndex == 0
                            ? AppColors.destructive
                            : AppColors.gray1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      pageIndex = 1;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.ic_stream,
                      color: pageIndex == 1
                          ? AppColors.destructive
                          : AppColors.gray1,
                    ),
                    Text(
                      'Streams',
                      style: AppStyles.caption11.copyWith(
                        fontSize: 10,
                        color: pageIndex == 1
                            ? AppColors.destructive
                            : AppColors.gray1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      pageIndex = 2;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.ic_message,
                      color: pageIndex == 2
                          ? AppColors.destructive
                          : AppColors.gray1,
                    ),
                    Text(
                      'Messages',
                      style: AppStyles.caption11.copyWith(
                        fontSize: 10,
                        color: pageIndex == 2
                            ? AppColors.destructive
                            : AppColors.gray1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  setState(
                    () {
                      pageIndex = 3;
                    },
                  );
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppAssets.ic_notifications,
                      color: pageIndex == 3
                          ? AppColors.destructive
                          : AppColors.gray1,
                    ),
                    Text(
                      'Notifications',
                      style: AppStyles.caption11.copyWith(
                        fontSize: 9,
                        color: pageIndex == 3
                            ? AppColors.destructive
                            : AppColors.gray1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(
                  () {
                    pageIndex = 4;
                  },
                );
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    AppAssets.ic_profile,
                    color: pageIndex == 4
                        ? AppColors.destructive
                        : AppColors.gray1,
                  ),
                  Text(
                    'Profile',
                    style: AppStyles.caption11.copyWith(
                      fontSize: 10,
                      color: pageIndex == 4
                          ? AppColors.destructive
                          : AppColors.gray1,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
