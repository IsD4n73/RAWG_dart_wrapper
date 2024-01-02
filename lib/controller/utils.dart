import 'package:RAWG_dart_wrapper/models/ordering.dart';

class Utils {
  static String orderingFormat(Ordering? order) {
    switch (order) {
      case Ordering.added:
        return "added";
      case Ordering.created:
        return "created";
      case Ordering.name:
        return "name";
      case Ordering.rating:
        return "rating";
      case Ordering.updated:
        return "updated";
      case Ordering.released:
        return "released";
      case null:
        return "rating";
    }
  }
}
