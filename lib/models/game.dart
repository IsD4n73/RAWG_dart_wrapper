class Game {
  /// Constructor of Game
  Game({
    required this.id,
    required this.slug,
    required this.name,
    required this.nameOriginal,
    required this.description,
    required this.released,
    required this.tba,
    required this.backgroundImage,
    required this.website,
    required this.achievementsCount,
    required this.alternativeNames,
  });

  /// ID of Game
  final int id;
  /// slug ID of Game 
  final String slug;
  /// name of Game
  final String name;
  /// originale name of Game
  final String nameOriginal;
  /// description of Game (only with details call)
  final String description;
  /// released date of Game
  final String released;
  /// is TBA
  final bool tba;
  /// bg image of Game
  final String backgroundImage;
  /// website of Game (only with details call)
  final String website;
  /// achievements count of Game (only with details call)
  final int achievementsCount;
  /// alternative name of Game (only with details call)
  final List<String> alternativeNames;

  /// get the model from the json
  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json["id"] ?? 0,
      slug: json["slug"] ?? "",
      name: json["name"] ?? "",
      nameOriginal: json["name_original"] ?? "",
      description: json["description"] ?? "",
      released: json["released"] ?? "",
      tba: json["tba"] ?? false,
      backgroundImage: json["background_image"] ?? "",
      website: json["website"] ?? "",
      achievementsCount: json["achievements_count"] ?? 0,
      alternativeNames: json["alternative_names"] == null
          ? []
          : List<String>.from(json["alternative_names"]!.map((x) => x)),
    );
  }

  /// get the json from the model
  Map<String, dynamic> toJson() => {
        "id": id,
        "slug": slug,
        "name": name,
        "name_original": nameOriginal,
        "description": description,
        "released": released,
        "tba": tba,
        "background_image": backgroundImage,
        "website": website,
        "achievements_count": achievementsCount,
        "alternative_names": alternativeNames.map((x) => x).toList(),
      };

  @override
  String toString() {
    return 'Game(id: $id, slug: $slug, name: $name, nameOriginal: $nameOriginal, description: $description, released: $released, tba: $tba, backgroundImage: $backgroundImage, website: $website, achievementsCount: $achievementsCount, alternativeNames: $alternativeNames)';
  }
}
