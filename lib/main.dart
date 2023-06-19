import 'package:flutter/material.dart';
import 'package:social_app_tutorial/routes/routes.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyApp(),
    ),
  );
}

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Social App Demo'),
//         ),
//         body: Center(
//           child: Column(
//             children: [
//               FilledButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => const BottomNavMenu(),
//                     ),
//                   );
//                 },
//                 child: const Text('All Page'),
//               ),
//               FilledButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (_) => const DownloadScreen(),
//                     ),
//                   );
//                 },
//                 child: const Text('Download Screen'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
