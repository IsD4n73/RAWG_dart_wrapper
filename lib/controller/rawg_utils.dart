import 'package:RAWG_dart_wrapper/controller/achievement_controller.dart';
import 'package:RAWG_dart_wrapper/controller/game_controller.dart';
import 'package:RAWG_dart_wrapper/controller/genre_controller.dart';
import 'package:RAWG_dart_wrapper/controller/platform_controller.dart';
import 'package:RAWG_dart_wrapper/models/achievement.dart';
import 'package:RAWG_dart_wrapper/models/game.dart';
import 'package:RAWG_dart_wrapper/models/genre.dart';
import 'package:RAWG_dart_wrapper/models/platform.dart';
import 'package:dio/dio.dart';

import '../models/ordering.dart';

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
