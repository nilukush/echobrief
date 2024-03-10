import 'package:echobrief/screens/summary_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/video_url_input.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController _urlController = TextEditingController();

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'EchoBrief'),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            VideoUrlInput(
              controller: _urlController,
              onSubmitted: (url) => _generateSummary(context, url),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () => _generateSummary(context, _urlController.text),
              child: const Text('Generate Summary'),
            ),
          ],
        ),
      ),
    );
  }

  void _generateSummary(BuildContext context, String url) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SummaryScreen(videoUrl: url),
      ),
    );
  }
}
