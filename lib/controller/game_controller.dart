import 'package:dio/dio.dart';
import '../models/errors.dart';
import '../models/game.dart';
import '../models/ordering.dart';
import 'rawg.dart';
import 'rawg_utils.dart';
import 'utils.dart';

/// get the [List<Game>] from api
Future<List<Game>> loadGame(int page, Ordering? ordering, String? query,
    String? platforms, String? genres) async {
  Map<String, dynamic> queryParameters = {
    "key": Rawg.key,
    "page_size": 100,
    "page": page,
    "search": query?.toLowerCase(),
    "orderig": Utils.orderingFormat(ordering),
    "genres": genres,
    "platforms": platforms,
  };

  queryParameters.removeWhere((key, value) => value == null);

  Response response = await RawgUtils.dio.get(
    '${RawgUtils.baseUrl}/games',
    queryParameters: queryParameters,
    options: Options(
      validateStatus: (status) => true,
    ),
  );

  if (response.statusCode! != 200) {
    throw RawgException(
      "Request not in 200 OK",
      response.statusCode ?? -1,
    );
  }

  if (response.data["error"] != null || response.data["details"] != null) {
    throw RawgException(
      response.data["error"] ?? response.data["details"],
      response.statusCode ?? -1,
    );
  }

  List<Game> results = [];
  if (response.data['results'] == null) {
    return [];
  }

  response.data['results'].forEach((v) {
    results.add(Game.fromJson(v));
  });
  return results;
}

/// get the [Game] from api with details
Future<Game> loadDetail(int id) async {
  Response response = await RawgUtils.dio.get(
    '${RawgUtils.baseUrl}/games/$id',
    queryParameters: {
      "key": Rawg.key,
    },
    options: Options(
      validateStatus: (status) => true,
    ),
  );

  if (response.statusCode! != 200) {
    throw RawgException(
      "Request not in 200 OK",
      response.statusCode ?? -1,
    );
  }

  if (response.data["error"] != null || response.data["details"] != null) {
    throw RawgException(
      response.data["error"] ?? response.data["details"],
      response.statusCode ?? -1,
    );
  }

  return Game.fromJson(response.data);
}

/// get the screenshot for the game
Future<List<String>> loadScreenshot(int id) async {
  Response response = await RawgUtils.dio.get(
    '${RawgUtils.baseUrl}/games/$id/screenshots',
    queryParameters: {
      "key": Rawg.key,
    },
    options: Options(
      validateStatus: (status) => true,
    ),
  );

  if (response.statusCode! != 200) {
    throw RawgException(
      "Request not in 200 OK",
      response.statusCode ?? -1,
    );
  }

  if (response.data["error"] != null || response.data["details"] != null) {
    throw RawgException(
      response.data["error"] ?? response.data["details"],
      response.statusCode ?? -1,
    );
  }

  List<String> results = [];
  if (response.data['results'] == null) {
    return results;
  }

  response.data['results'].forEach((v) {
    results.add(v["image"]);
  });
  return results;
}
