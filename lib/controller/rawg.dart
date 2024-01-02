import 'ordering.dart';
import 'rawg_utils.dart';

class Rawg{
  /// Api key for authentication
  static String? key;
  
  Rawg({required String apiKey}){
    key = apiKey;
  }

  /// Get a list of [Game] 
  /// params: page, ordering
  /// You can sort the results by the enum [Ordering]
  /// return an empty list if the page does not exist
  static void getGames({int page = 1, Ordering? order, String? query}){
    RawgUtils.games(page, order, query);
  }

  /// Get a [Game] by ID with more details (achievement count, alias names, original name, website)
  static void getGameDetails({required int id}){
    RawgUtils.detail(id);
  }

  /// Get a list of [Genre]
  static void getGenres(){
    RawgUtils.genres();
  }

  /// Get a list of [Achievement]
  /// params: page
  /// return an empty list if the page does not exist
  static void getAchievements({required int id, int page = 1}){
    RawgUtils.achievement(page);
  }

  /// Get a list of [Platform]
  static void getPlatforms(){
    RawgUtils.platforms();
  }
  
}