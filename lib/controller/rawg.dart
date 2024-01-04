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
  /// params: page, ordering
  /// You can sort the results by the enum [Ordering]
  /// return an empty list if the page does not exist
  static Future<List<Game>> getGames(
      {int page = 1, Ordering? order, String? query}) async {
    return RawgUtils.games(page, order, query);
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
