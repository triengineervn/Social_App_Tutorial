import 'dart:io';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:path_provider/path_provider.dart';

class DownloadScreen extends StatefulWidget {
  const DownloadScreen({super.key});

  @override
  State<DownloadScreen> createState() => _DownloadScreenState();
}

class _DownloadScreenState extends State<DownloadScreen> {
  double? progress = null;
  String status = 'Cannot Downloaded';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: downloadButtonPressed,
              child: const Text(
                'Download',
              ),
            ),
            const SizedBox(height: 20),
            CircularProgressIndicator(
              value: progress,
            ),
            const SizedBox(height: 20),
            Text(status),
          ],
        ),
      ),
    );
  }

  void downloadButtonPressed() async {
    setState(() {
      progress = null;
    });

    String url = 'https://speed.hetzner.de/100MB.bin';
    final request = Request('GET', Uri.parse(url));
    final StreamedResponse response = await Client().send(request);
    final contentLength = response.contentLength;
    setState(() {
      progress = 0.000001;
      status = "Download Started";
    });
    List<int> bytes = [];
    final file = await _getFile('video.mp4');
    response.stream.listen(
      (List<int> newBytes) {
        bytes.addAll(newBytes);
        final downloadedLength = bytes.length;
        setState(() {
          progress = downloadedLength.toDouble() / (contentLength ?? 1);
          status = "Progress: ${((progress ?? 0) * 100).toStringAsFixed(2)} %";
        });
        print("progress: $progress");
      },
      onDone: () async {
        setState(() {
          progress = 1;
          status = "Download Finished";
        });
        await file.writeAsBytes(bytes);
        debugPrint("Download finished");
      },
      onError: (e) {
        debugPrint(e);
      },
      cancelOnError: true,
    );
  }

  Future<File> _getFile(String filename) async {
    final dir = await getTemporaryDirectory();
    // final dir = await getApplicationDocumentsDirectory();
    print("${dir.path}/$filename");
    return File("${dir.path}/$filename");
  }
}
