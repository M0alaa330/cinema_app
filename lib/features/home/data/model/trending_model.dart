class TrendingModel {
  final String? name;
  final String? desc;
  final String? posterpath;
  final String? originallanguage;
  final String? releasedate;
  final double? popularity;
  final int? id;

  TrendingModel(
      {required this.name,
      required this.desc,
      required this.posterpath,
      required this.originallanguage,
      required this.releasedate,
      required this.popularity,
      required this.id});
  factory TrendingModel.fromjson(Map<String, dynamic> json) {
    return TrendingModel(
        id: json['id'],
        name: json['title'],
        desc: json['overview'],
        posterpath: json['poster_path'],
        originallanguage: json['original_language'],
        releasedate: json['release_date'],
        popularity: json['popularity']);
  }
}
