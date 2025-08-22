class Schedule {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;

  Schedule({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      imageUrl: json['imageUrl'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'subtitle': subtitle,
    'imageUrl': imageUrl,
  };

  @override
  String toString() {
    return 'Schedule($title on $subtitle from $imageUrl)';
  }
}
