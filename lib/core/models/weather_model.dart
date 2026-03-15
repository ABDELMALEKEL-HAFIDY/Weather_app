class WeatherModel {
  final String cityName;
  final String weatherCondition;
  final int weatherCode;
                                                 //final double temp;
  final double maxTemp;
  final double minTemp;
  final double avgTemp;
  final double maxWindKph;
  final int humidity;
  final int chanceOfRain;
  WeatherModel({
    required this.cityName,
    required this.weatherCondition,
    required this.weatherCode,
    //required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.avgTemp,
    required this.maxWindKph,
    required this.humidity,
    required this.chanceOfRain,
  });
  factory WeatherModel.fromJson(json) {
    return WeatherModel(
      cityName: json['location']['name'],
      weatherCondition: json['forecast']['forecastday'][0]['day']['condition']['text'],
      weatherCode: json ['forecast']['forecastday'][0]['day']['condition']['code'],
      // temp: json['forecast']['forecastday'][0]['day'],
      maxTemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
      minTemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
      avgTemp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
      maxWindKph: json['forecast']['forecastday'][0]['day']['maxwind_kph'],
      humidity: json['forecast']['forecastday'][0]['day']['avghumidity'],
      chanceOfRain: json['forecast']['forecastday'][0]['day']['daily_chance_of_rain'],
    );
  }
}
