import 'package:rawg_dart_wrapper/models/platform.dart';

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
    required this.playtime,
    required this.metacriticRating,
    required this.rating,
    required this.platforms,
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

  /// Play time in hours (only with details call)
  final int playtime;

  /// general rating of the game (only with details call)
  final double rating;

  /// metacritic rating of the game (only with details call)
  final int metacriticRating;

  /// alternative name of Game (only with details call)
  final List<String> alternativeNames;

  /// list of the [Platform] where the game is avaliable
  final List<Platform> platforms;

  /// get the model from the json
  factory Game.fromJson(Map<String, dynamic> json) {
    return Game(
      id: json["id"] ?? 0,
      slug: json["slug"] ?? "",
      name: json["name"] ?? "",
      rating: json["rating"] ?? 0,
      metacriticRating: json["metacritic"] ?? 0,
      nameOriginal: json["name_original"] ?? "",
      description: json["description"] ?? "",
      released: json["released"] ?? "",
      tba: json["tba"] ?? false,
      backgroundImage: json["background_image"] ?? "",
      website: json["website"] ?? "",
      playtime: json["playtime"] ?? 0,
      achievementsCount: json["achievements_count"] ?? 0,
      alternativeNames: json["alternative_names"] == null
          ? []
          : List<String>.from(
              json["alternative_names"]!.map(
                (x) => x,
              ),
            ),
      platforms: json["platforms"] == null
          ? []
          : List<Platform>.from(
              json["platforms"]!.map(
                (x) => Platform.fromJson(
                  x["platform"],
                ),
              ),
            ),
    );
  }

  

  @override
  String toString() {
    return 'Game(id: $id, slug: $slug, name: $name, nameOriginal: $nameOriginal, description: $description, released: $released, tba: $tba, backgroundImage: $backgroundImage, website: $website, achievementsCount: $achievementsCount, playtime: $playtime, rating: $rating, metacriticRating: $metacriticRating, alternativeNames: $alternativeNames, platforms: $platforms)';
  }
}
