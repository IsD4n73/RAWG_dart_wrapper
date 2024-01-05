import 'package:dio/dio.dart';

import '../models/achievement.dart';
import '../models/game.dart';
import '../models/genre.dart';
import '../models/ordering.dart';
import '../models/platform.dart';
import '../models/publisher.dart';
import 'achievement_controller.dart';
import 'game_controller.dart';
import 'publisher_controller.dart';
import 'genre_controller.dart';
import 'platform_controller.dart';

/// Class for check for errors
class RawgUtils {
  /// client for API Call
  static final dio = Dio();

  /// base url for API
  static String baseUrl = "https://api.rawg.io/api";

  /// check for game error
  static Future<List<Game>> games(int page, Ordering? order, String? query,
      String? platforms, String? genres) async {
    return loadGame(page, order, query, platforms, genres);
  }

  /// check for game details error
  static Future<Game> detail(int id) async {
    return await loadDetail(id);
  }

  /// check for game screen error
  static Future<List<String>> screen(int id) async {
    return await loadScreenshot(id);
  }

  /// check for game trailer error
  static Future<List<String>> trailer(int id) async {
    return await loadTrailer(id);
  }

  /// check for genre error
  static Future<List<Genre>> genres() async {
    return await loadGenre();
  }

  /// check for achievment error
  static Future<List<Achievement>> achievement(int id) async {
    return await loadGameTrofy(id);
  }

  /// check for platform error
  static Future<List<Platform>> platforms() async {
    return await loadPlatform();
  }

  /// check for platform error
  static Future<List<Publisher>> publisher(int page) async {
    return await loadPublisher(page);
  }

  
}
