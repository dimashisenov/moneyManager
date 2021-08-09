import 'package:meta/meta.dart';

class ModelName {
  final DateTime? sunrise;
  final DateTime? sunset;
  final DateTime? solarNoon;
  final int? dayLength;

  ModelName({
    @required this.sunrise,
    @required this.sunset,
    @required this.solarNoon,
    @required this.dayLength,
  });
}
