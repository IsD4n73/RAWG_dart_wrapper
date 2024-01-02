

class RawgException implements Exception {
  String cause;
  int statusCode;
  
  RawgException(this.cause, this.statusCode);
}