class Genre {
  /// Constructor of Genre
  Genre({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
  });

  /// ID of Genre
  final int id;
  /// name of Genre
  final String name;
  /// slug ID of Genre
  final String slug;
  /// nuber of [Game] with the Genre
  final int gamesCount;
  /// Image of Genre
  final String imageBackground;

  /// get the model from the json
  factory Genre.fromJson(Map<String, dynamic> json) {
    return Genre(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      slug: json["slug"] ?? "",
      gamesCount: json["games_count"] ?? 0,
      imageBackground: json["image_background"] ?? "",
    );
  }

  /// get the json from the model
  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "slug": slug,
        "games_count": gamesCount,
        "image_background": imageBackground,
      };

  @override
  String toString() {
    return "$id, $name, $slug, $gamesCount, $imageBackground, ";
  }
}
