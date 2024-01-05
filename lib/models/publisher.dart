class Publisher {
  /// Constructor of Publisher
  Publisher({
    required this.id,
    required this.name,
    required this.slug,
    required this.gamesCount,
    required this.imageBackground,
  });

  /// ID of Publisher
  final int id;

  /// name of Publisher
  final String name;

  /// slug ID of Publisher
  final String slug;

  /// number of [Game] for this Publisher
  final int gamesCount;

  /// bg image of Publisher
  final String imageBackground;

  /// get the model from the json
  factory Publisher.fromJson(Map<String, dynamic> json) {
    return Publisher(
      id: json["id"] ?? 0,
      name: json["name"] ?? "",
      slug: json["slug"] ?? "",
      gamesCount: json["games_count"] ?? 0,
      imageBackground: json["image_background"] ?? "",
    );
  }

  @override
  String toString() {
    return "$id, $name, $slug, $gamesCount, $imageBackground, ";
  }
}
