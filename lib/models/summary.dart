class Summary {
  final String content;

  Summary({required this.content});

  factory Summary.fromJson(Map<String, dynamic> json) {
    return Summary(
      content: json['summary'],
    );
  }
}
