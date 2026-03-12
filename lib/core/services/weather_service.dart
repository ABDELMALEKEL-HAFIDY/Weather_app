import 'package:dio/dio.dart';
import 'package:weather_app/core/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    Response response = await dio.get(
      '$baseUrl/forecast.json?key=bb2280fbda7d45b0ad904204261203&q=$cityName&days=1',
    );
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
  Future<WeatherModel> getForcast({required String cityName}) async {
    Response response = await dio.get(
      '$baseUrl/forecast.json?key=bb2280fbda7d45b0ad904204261203&q=$cityName&days=1',
    );
    WeatherModel weatherModel = WeatherModel.fromJson(response.data);
    return weatherModel;
  }
}
