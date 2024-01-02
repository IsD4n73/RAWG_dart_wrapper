import 'package:dio/dio.dart';



Future<List<Genre>> loadGenre() async {
  Response response = await RawgUtils.dio.get(RawgUtils.baseUrl + '/genres', queryParameters: {"key" : Rawg.key, "page_size": 100,},);

  if(response.statusCode! = 200){
    throw("error");
  }

  if(response.data["error"] != null || response.data["details"] != null){} 

  
  List<Genre> results = [];
  if(response.data['results'] == null){
   return [];
  }
  
  response.data['results'].forEach((v) {
    results.add(Genre.fromJson(v));
  });
  return results;
  
} 
