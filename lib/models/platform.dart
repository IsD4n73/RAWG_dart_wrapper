class Platform {
  /// Constructor of Platform
  Platform({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
  });

  /// ID of Platform
  final int id;
  /// name of Platform
  final String name;
  /// slug ID of Platform
  final String slug;
  /// number of [Game] for this platform
  final int gamesCount;
  /// image of Platform
  final String imageBackground;

  /// get the model from the json
  factory Platform.fromJson(Map<String, dynamic> json) {
    return Platform(
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
