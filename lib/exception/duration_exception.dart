import 'package:flutter_camp/core/enum/duration_enum.dart';

class DurationException implements Exception {
  late final DurationEnums data;
  @override
  String toString() {
    return "Duration not found $data";
  }
}