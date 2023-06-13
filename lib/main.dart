import 'package:flutter/material.dart';
import 'package:social_app_tutorial/modules/post/widgets/bottomNav_menu.dart';
import 'package:social_app_tutorial/modules/post/widgets/download_file.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Social App Demo'),
        ),
        body: Center(
          child: Column(
            children: [
              FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const BottomNavMenu(),
                    ),
                  );
                },
                child: const Text('All Page'),
              ),
              FilledButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const DownloadScreen(),
                    ),
                  );
                },
                child: const Text('Download Screen'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
