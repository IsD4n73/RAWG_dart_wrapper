import 'package:dio/dio.dart';

import '../models/achievement.dart';
import '../models/game.dart';
import '../models/genre.dart';
import '../models/ordering.dart';
import '../models/platform.dart';
import 'achievement_controller.dart';
import 'game_controller.dart';
import 'genre_controller.dart';
import 'platform_controller.dart';

/// Class for check for errors
class RawgUtils {
  /// client for API Call
  static final dio = Dio();

  /// base url for API
  static String baseUrl = "https://api.rawg.io/api";

  /// check for game error
  static Future<List<Game>> games(
      int page, Ordering? order, String? query) async {
    return loadGame(page, order, query);
  }

  /// check for game details error
  static Future<Game> detail(int id) async {
    
    return await loadDetail(id);
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
}
