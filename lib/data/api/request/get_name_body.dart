import 'package:meta/meta.dart';

/*вынесем подготовку данных для запроса в отдельный этап*/
class MehodNameBody {
  final double? latitude;
  final double? longitude;

  MehodNameBody({
    @required this.latitude,
    @required this.longitude,
  });

  Map<String, dynamic> toApi() {
    return {
      'lat': latitude,
      'lng': longitude,
      'formatted': 0,
    };
  }
}
