import 'package:dio/dio.dart';
import 'package:weather_app/core/models/weather_model.dart';

class WeatherService {
  final Dio dio;

  WeatherService(this.dio);
  WeatherModel getCurrentWeather() {
    dio.get(
      'https://api.weatherapi.com/v1/forecast.json?key=bb2280fbda7d45b0ad904204261203&q=London&days=1',
    );
  }
}
