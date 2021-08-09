import 'package:meta/meta.dart';
import 'package:project_template/domain/model/model.dart';

/*
На уровне бизнес-логики мы описываем не сами эти источники, а лишь интерфейс взаимодействия с ними.
*/

abstract class DayRepository {
  Future<ModelName> getDay({
    @required double latitude,
    @required double longitude,
  });
}
