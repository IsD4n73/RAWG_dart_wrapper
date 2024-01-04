import '../models/achievement.dart';
import '../models/game.dart';
import '../models/genre.dart';
import '../models/ordering.dart';
import '../models/platform.dart';
import 'rawg_utils.dart';

class Rawg {
  /// Api key for authentication
  static String? key;

  /// Constructor to inizialize the API KEY
  Rawg({required String apiKey}) {
    key = apiKey;
  }

  /// Get a list of [Game]
  /// params: page, ordering, query, platforms, genres
  /// You can sort the results by the enum [Ordering]
  /// For the platforms and genres you can use the ID or SLUG separated by ',' for the search [Rawg.getGames(platforms: "1,2,3")] or [Rawg.getGames(platforms: "pc")]
  /// return an empty list if the page does not exist
  static Future<List<Game>> getGames(
      {int page = 1,
      Ordering? order,
      String? query,
      String? platforms,
      String? genres}) async {
    return RawgUtils.games(page, order, query, platforms, genres);
  }

  /// Get a list of [String] (URI of image)
  /// params: ID of the game
  static Future<List<String>> getScreenshot({required int gameID}) async {
    return RawgUtils.screen(gameID);
  }

  /// Get a [Game] by ID with more details (achievement count, alias names, original name, website)
  static Future<Game> getGameDetails({required int id}) async {
    return RawgUtils.detail(id);
  }

  /// Get a list of [Genre]
  static Future<List<Genre>> getGenres() async {
    return RawgUtils.genres();
  }

  /// Get a list of [Achievement]
  /// params: page
  /// return an empty list if the page does not exist
  static Future<List<Achievement>> getAchievements({required int id}) async {
    return RawgUtils.achievement(id);
  }

  /// Get a list of [Platform]
  static Future<List<Platform>> getPlatforms() async {
    return RawgUtils.platforms();
  }
}
