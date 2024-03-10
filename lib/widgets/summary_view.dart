import 'package:echobrief/models/summary.dart';
import 'package:flutter/material.dart';

class SummaryView extends StatelessWidget {
  final Summary summary;

  const SummaryView({super.key, required this.summary});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Summary',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            summary.content,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
