import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/models/weather_model.dart';
import 'package:weather_app/core/services/weather_service.dart';
import 'package:weather_app/features/presentation/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/features/presentation/views/search_view.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit(super.initialState);

  getWeather({required String cityName}) async {
    WeatherModel weatherModel = await WeatherService(
      Dio(),
    ).getCurrentWeather(cityName: cityName);
  }
}
