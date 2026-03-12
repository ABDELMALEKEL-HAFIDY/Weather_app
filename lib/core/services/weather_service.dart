import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:weather_app/core/models/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = 'https://api.weatherapi.com/v1';
  final String apiKey = 'bb2280fbda7d45b0ad904204261203';
  WeatherService(this.dio);
  Future<WeatherModel> getCurrentWeather({required String cityName}) async {
    try {
      Response response = await dio.get(
        '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1',
      );
      WeatherModel weatherModel = WeatherModel.fromJson(response.data);

      return weatherModel;
    } on DioException catch (e) {
      final String errorMessage =
          e.response?.data['error']['message'] ??
          'Oops There Was Error, Try Later';
      throw Exception(errorMessage);
    } catch (e) {
      log(e.toString());
      throw Exception(e);
    }
  }
}






//if(response.statusCode==201){
   //old handlig exception;     
//         WeatherModel weatherModel = WeatherModel.fromJson(response.data);
//      }else{
//        final String errorMessage =response.data['error']['message"'];
//        throw Exception(errorMessage);
//      }









// for add new future method;
  // Future<WeatherModel> getForcast({required String cityName}) async {
  //  Response response = await dio.get(
  //    '$baseUrl/forecast.json?key=$apiKey&q=$cityName&days=1',
  //  );
  //  WeatherModel weatherModel = WeatherModel.fromJson(response.data);
  //  return weatherModel;
  // }
//}
