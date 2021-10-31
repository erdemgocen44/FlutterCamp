import 'package:flutter_camp/exception/duration_exception.dart';

enum DurationEnums { LOW, NORMAL, HIGH }

extension DurationsEnumsExtension on DurationEnums {
  Duration get time {
    switch (this) {
      case DurationEnums.HIGH:
        return Duration(seconds: 5);
      case DurationEnums.NORMAL:
        return Duration(seconds: 3);
      case DurationEnums.LOW:
        return Duration(seconds: 1);

      default:
        throw DurationException(this);
    }
  }
}
