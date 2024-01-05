import 'package:dio/dio.dart';
import '../models/errors.dart';
import '../models/publisher.dart';
import 'rawg.dart';
import 'rawg_utils.dart';

/// get the [List<Publisher>] from api
Future<List<Publisher>> loadPublisher(int page) async {
  Response response = await RawgUtils.dio.get(
    '${RawgUtils.baseUrl}/publishers',
    queryParameters: {
      "key": Rawg.key,
      "page": page,
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

  List<Publisher> results = [];
  if (response.data['results'] == null) {
    return [];
  }

  response.data['results'].forEach((v) {
    results.add(Publisher.fromJson(v));
  });
  return results;
}
