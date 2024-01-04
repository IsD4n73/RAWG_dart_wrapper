class Platform {
  /// Constructor of Platform
  Platform({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
    required this.image,
  });

  /// ID of Platform
  final int id;

  /// name of Platform
  final String name;

  /// slug ID of Platform
  final String slug;

  /// number of [Game] for this platform
  final int gamesCount;

  /// bg image of Platform
  final String imageBackground;

  /// image of platform
  final String image;

  /// get the model from the json
  factory Platform.fromJson(Map<String, dynamic> json) {
    return Platform(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      slug: json["slug"] ?? "",
      image: json["image"] ?? "",
      gamesCount: json["games_count"] ?? 0,
      imageBackground: json["image_background"] ?? "",
    );
  }

  @override
  String toString() {
    return "$id, $name, $slug, $gamesCount, $imageBackground, ";
  }
}
