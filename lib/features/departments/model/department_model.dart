class Department {
  final String id;
  final String name;
  final String? description;
  final String? iconUrl;

  Department({
    required this.id,
    required this.name,
    this.description,
    this.iconUrl,
  });

  /// Factory constructor to create a Department from JSON
  factory Department.fromJson(Map<String, dynamic> json) {
    return Department(
      id: json['id'] as String,
      name: json['name'] as String,
      description: json['description'] as String?,
      iconUrl: json['iconUrl'] as String?,
    );
  }

  /// Convert the Department to JSON
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'iconUrl': iconUrl,
    };
  }

  /// Useful for debugging
  @override
  String toString() {
    return 'Department(id: $id, name: $name)';
  }
}
