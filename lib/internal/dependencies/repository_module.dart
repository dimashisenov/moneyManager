import 'package:project_template/data/repository/modelname_data_repository.dart';
import 'package:project_template/domain/repository/model_repository.dart';

import 'api_module.dart';

class RepositoryModule {
  static DayRepository _dayRepository = dayRepository();

  static DayRepository dayRepository() {
    if (_dayRepository == null) {
      _dayRepository = DayDataRepository(
        ApiModule.apiUtil(),
      );
    }
    return _dayRepository;
  }
}
