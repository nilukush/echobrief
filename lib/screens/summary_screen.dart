import 'package:echobrief/models/summary.dart';
import 'package:echobrief/services/api_service.dart';
import 'package:echobrief/widgets/custom_app_bar.dart';
import 'package:echobrief/widgets/summary_view.dart';
import 'package:flutter/material.dart';

class SummaryScreen extends StatefulWidget {
  final String videoUrl;

  const SummaryScreen({super.key, required this.videoUrl});

  @override
  // Change the return type to State<SummaryScreen>
  State<SummaryScreen> createState() => _SummaryScreenState();
}

class _SummaryScreenState extends State<SummaryScreen> {
  late Future<Summary> _summaryFuture;

  @override
  void initState() {
    super.initState();
    _summaryFuture = ApiService.generateSummary(widget.videoUrl);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: 'Summary'),
      body: FutureBuilder<Summary>(
        future: _summaryFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else {
            return SummaryView(summary: snapshot.data!);
          }
        },
      ),
    );
  }
}
