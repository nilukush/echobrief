import 'dart:convert';

import 'package:echobrief/models/summary.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static const String _baseUrl = 'http://127.0.0.1:5000';

  static Future<Summary> generateSummary(String videoUrl) async {
    final url = Uri.parse('$_baseUrl/api/summarize');
    final response = await http.post(
      url,
      headers: {'Content-Type': 'application/json'},
      body: json.encode({'video_url': videoUrl}),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return Summary.fromJson(data);
    } else {
      throw Exception(
          'Failed to generate summary. Status code: ${response.statusCode}');
    }
  }
}
