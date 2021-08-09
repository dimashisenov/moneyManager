import 'package:project_template/data/api/api_util.dart';
import 'package:project_template/domain/model/model.dart';
import 'package:project_template/domain/repository/model_repository.dart';

/*

 Ранее мы определили на уровне бизнес-логики интерфейс репозитория DayRepository,
 теперь мы можем описать его конкретную реализацию.

*/

class DayDataRepository extends DayRepository {
  final ApiUtil _apiUtil;

  DayDataRepository(this._apiUtil);

  @override
  Future<ModelName> getDay({double? latitude, double? longitude}) {
    return _apiUtil.getDay(latitude: latitude, longitude: longitude);
  }
}
