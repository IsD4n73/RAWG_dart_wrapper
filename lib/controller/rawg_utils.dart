import 'ordering.dart';
import 'package:dio/dio.dart';

class RawgUtils{
  static final dio = Dio(); 
  static String baseUrl = "https://api.rawg.io/api";

  static void games(int page, Ordering? order, String? query){}

  static void detail(int id){}
  
  static void genres(){}
  
  static void achievement(int page){}
  
  static void platforms(){}
}
