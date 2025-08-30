class Schedule {
  final String id;
  final String title;
  final String subtitle;
  final String imageUrl;
  final List<String> schedules;

  Schedule({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.imageUrl,
    required this.schedules,
  });

  factory Schedule.fromJson(Map<String, dynamic> json) {
    return Schedule(
      id: json['id'],
      title: json['title'],
      subtitle: json['subtitle'],
      imageUrl: json['imageUrl'],
      schedules: json['schedules'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'subtitle': subtitle,
    'imageUrl': imageUrl,
    'schedules': schedules,
  };

  @override
  String toString() {
    return 'Schedule($title on $subtitle from $imageUrl)';
  }
}
