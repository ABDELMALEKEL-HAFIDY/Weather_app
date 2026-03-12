class WeatherModel {
  final String cityName;
  final String weatherCondition;
  final String? icon;
  final double temp;
  final double maxTemp;
  final double minTemp;
  final double avgTemp;
  final double maxWindKph;
  final int humidity;
  final int chanceOfRain;

  WeatherModel({
    required this.cityName,
    required this.weatherCondition,
    this.icon,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.avgTemp,
    required this.maxWindKph,
    required this.humidity,
    required this.chanceOfRain,
  });
}
