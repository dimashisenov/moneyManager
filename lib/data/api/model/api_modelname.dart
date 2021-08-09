/*
полученные с бэкенда данные могут иметь довольно сложную структуру, 
не всегда удобную для нашего приложения и мы можем произвести необходимую подготовку на данном уровне.
С другой стороны, благодаря такому разделению, мы получаем более прозрачную структуру - на уровне бизнес-логики нам не будут мешать бесполезные там методы fromApi/toApi, 
плюс, если бэкенд изменит формат присылаемых данных, нам будет достаточно поправить в одном месте нашу модель ApiDay, 
и на уровне бизнес-логики все будет работать без изменений.
*/

/*
https://app.quicktype.io/
*/

class ApiDay {
  final String sunrise;
  final String sunset;
  final String solarNoon;
  final num dayLength;

  ApiDay.fromApi(Map<String, dynamic> map)
      : sunrise = map['results']['sunrise'],
        sunset = map['results']['sunset'],
        solarNoon = map['results']['solar_noon'],
        dayLength = map['results']['day_length'];
}
