import 'package:meta/meta.dart';
import 'package:project_template/data/api/request/get_name_body.dart';
import 'package:project_template/data/api/service/apiname_service.dart';
import 'package:project_template/data/mapper/mapper_modelname.dart';
import 'package:project_template/domain/model/model.dart';

/*
На этом уровне мы преобразуем данные бизнес-слоя в необходимый сервису вид, 
выполняем фактический запрос и преобразуем полученные данные в вид, приемлемый для бизнес-слоя.
*/

class ApiUtil {
  final APINameService _apiNameService;

  ApiUtil(this._apiNameService);

  Future<ModelName> getDay({
    @required double? latitude,
    @required double? longitude,
  }) async {
    final body = MehodNameBody(latitude: latitude, longitude: longitude);
    final result = await _apiNameService.getDay(body);
    return ModelMapper.fromApi(result);
  }
}
