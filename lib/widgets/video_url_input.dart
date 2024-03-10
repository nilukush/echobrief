import 'package:flutter/material.dart';

class VideoUrlInput extends StatelessWidget {
  final TextEditingController controller;
  final Function(String) onSubmitted;

  const VideoUrlInput(
      {super.key, required this.controller, required this.onSubmitted});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      onSubmitted: onSubmitted,
      decoration: const InputDecoration(
        labelText: 'Enter YouTube Video URL',
        border: OutlineInputBorder(),
      ),
    );
  }
}
