import 'package:dio/dio.dart';

import '../models/achievement.dart';
import '../models/errors.dart';
import 'rawg.dart';
import 'rawg_utils.dart';

/// get the [List<Achievement>] from api
Future<List<Achievement>> loadGameTrofy(int id) async {
  Response response = await RawgUtils.dio.get(
    '${RawgUtils.baseUrl}/games/$id/achievements',
    queryParameters: {
      "key": Rawg.key,
      "page_size": 100,
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

  List<Achievement> results = [];
  if (response.data['results'] == null) {
    return [];
  }

  response.data['results'].forEach((v) {
    results.add(Achievement.fromJson(v));
  });
  return results;
}
