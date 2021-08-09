import 'package:dio/dio.dart';
import 'package:project_template/data/api/model/api_modelname.dart';
import 'package:project_template/data/api/request/get_name_body.dart';

/*
 набор классов, которые работают с конкретными сервисами, 
 преобразуют данные слоя бизнес-логики в необходимый для запросов вид (например, json, FormData), 
 выполняют фактические запросы, и обрабатывают полученные результаты.
*/

class APINameService {
  static const _BASE_URL = 'url';

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _BASE_URL),
  );

  Future<ApiDay> getDay(MehodNameBody body) async {
    final response = await _dio.get(
      '/json',
      queryParameters: body.toApi(),
    );
    return ApiDay.fromApi(response.data);
  }
}
