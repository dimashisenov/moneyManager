import 'package:project_template/data/api/model/api_modelname.dart';
import 'package:project_template/domain/model/model.dart';

//mapping from the class ApiDay which is data from backend to our class Day
class ModelMapper {
  static ModelName fromApi(ApiDay day) {
    return ModelName(
      sunrise: DateTime.tryParse(day.sunrise),
      sunset: DateTime.tryParse(day.sunset),
      solarNoon: DateTime.tryParse(day.solarNoon),
      dayLength: day.dayLength.toInt(),
    );
  }
}
