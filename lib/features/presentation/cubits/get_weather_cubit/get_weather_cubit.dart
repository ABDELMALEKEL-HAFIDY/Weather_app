import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/models/weather_model.dart';
import 'package:weather_app/core/services/weather_service.dart';
import 'package:weather_app/features/presentation/cubits/get_weather_cubit/get_weather_state.dart';

class GetWeatherCubit extends Cubit<WeatherState> {
  GetWeatherCubit() : super(WeatherInitialState());
  late WeatherModel weatherModel; // i create weatherModel for widgets forked
  getWeather({required String cityName}) async {
    try {
       weatherModel = await WeatherService(
        Dio(),
      ).getCurrentWeather(cityName: cityName);
      emit(WeatherLoadedSate(weatherModel));
    } catch (e) {
      emit(WeatherFailure(e.toString()));
    }
  }
}
