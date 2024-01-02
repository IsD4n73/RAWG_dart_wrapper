import 'package:RAWG_dart_wrapper/RAWG_dart_wrapper.dart';
import 'package:RAWG_dart_wrapper/controller/utils.dart';
import 'package:dio/dio.dart';
import 'rawg_utils.dart';

Future<List<Game>> loadGame(int page, Ordering? ordering, String? query) async {
  Response response = await RawgUtils.dio.get(
    RawgUtils.baseUrl + '/games',
    queryParameters: {
      "key": Rawg.key,
      "page_size": 100,
      "page": page,
      "search": query?.toLowerCase(),
      "orderig": Utils.orderingFormat(ordering),
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

  List<Game> results = [];
  if (response.data['results'] == null) {
    return [];
  }

  response.data['results'].forEach((v) {
    results.add(Game.fromJson(v));
  });
  return results;
}

Future<Game> loadDetail(int id) async {
  Response response = await RawgUtils.dio.get(
    RawgUtils.baseUrl + '/games/$id',
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
