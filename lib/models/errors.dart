class RawgException implements Exception {
  /// cause of error
  String cause;

  /// status code of the request or -1
  int statusCode;

  /// Constructor of Exception
  RawgException(this.cause, this.statusCode);
}
