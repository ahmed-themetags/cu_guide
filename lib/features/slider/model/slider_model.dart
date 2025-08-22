class Slider {
  final String id;
  final String name;
  final String? imageUrl;

  Slider({
    required this.id,
    required this.name,
    this.imageUrl,
  });

  /// Factory constructor to create a Department from JSON
  factory Slider.fromJson(Map<String, dynamic> json) {
    return Slider(
      id: json['id'] as String,
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String?,
    );
  }

  /// Convert the Department to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'imageUrl': imageUrl,
    };
  }

  /// Useful for debugging
  @override
  String toString() {
    return 'Slider(id: $id, name: $name)';
  }
}
