import 'package:project_template/data/api/api_util.dart';
import 'package:project_template/data/api/service/apiname_service.dart';

/*
Класс ApiModule содержит в себе статический метод apiUtil, 
который возвращает нам единственный экземпляр класса ApiUtil и создает его при необходимости.
*/

class ApiModule {
  static ApiUtil _apiUtil = apiUtil();

  static ApiUtil apiUtil() {
    if (_apiUtil == null) {
      _apiUtil = ApiUtil(APINameService());
    }
    return _apiUtil;
  }
}
