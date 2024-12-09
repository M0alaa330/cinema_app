class MoviesCategory {
  final int id;
  final String name;
  MoviesCategory({required this.id, required this.name});
  factory MoviesCategory.fromJSON(Map<String, dynamic> json) {
    return MoviesCategory(id: json['id'], name: json['name']);
  }
}
