import '../models/ordering.dart';

/// Utils class with internal methods
class Utils {
  /// get the order string from [Ordering] enum
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
