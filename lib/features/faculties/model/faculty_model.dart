class Faculty {
  final String id;
  final String name;
  final String? shortDescription;
  final String? description;
  final String? imageUrl;

  Faculty({
    required this.id,
    required this.name,
    this.shortDescription,
    this.description,
    this.imageUrl,
  });

  /// Factory constructor to create a Faculty from JSON
  factory Faculty.fromJson(Map<String, dynamic> json) {
    return Faculty(
      id: json['id'] as String,
      name: json['name'] as String,
      shortDescription: json['shortDescription'] as String?,
      description: json['description'] as String?,
      imageUrl: json['imageUrl'] as String?,
    );
  }

  /// Convert the Faculty to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'short_description': shortDescription,
      'description': description,
      'imageUrl': imageUrl,
    };
  }

  /// Useful for debugging
  @override
  String toString() {
    return 'Faculty(id: $id, name: $name)';
  }
}
