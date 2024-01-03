
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

class RawgUtils {
  static final dio = Dio();

  static String baseUrl = "https://api.rawg.io/api";

  static Future<List<Game>> games(
      int page, Ordering? order, String? query) async {
    return loadGame(page, order, query);
  }

  static Future<Game> detail(int id) async {
    return await loadDetail(id);
  }

  static Future<List<Genre>> genres() async {
    return await loadGenre();
  }

  static Future<List<Achievement>> achievement(int id) async {
    return await loadGameTrofy(id);
  }

  static Future<List<Platform>> platforms() async {
    return await loadPlatform();
  }
}
