import 'package:weather_app/core/models/weather_model.dart';

class WeatherState {}

class WeatherInitialState extends WeatherState {}

class WeatherLoadedSate extends WeatherState {
  final WeatherModel weatherModel;

  WeatherLoadedSate(this.weatherModel);
}

class WeatherFailure extends WeatherState {
  final String errMessage;

  WeatherFailure(this.errMessage);
}
