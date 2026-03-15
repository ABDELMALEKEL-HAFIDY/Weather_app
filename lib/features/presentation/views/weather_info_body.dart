import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/models/weather_model.dart';
import 'package:weather_app/core/services/get_weather_code.dart';
import 'package:weather_app/core/utils/assets.dart';
import 'package:weather_app/features/presentation/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/features/widgets/custom_text.dart';
import 'package:weather_app/features/widgets/weather_widgets_%20stat.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key});
  //final WeatherModel weatherModel;// old with not forked
  @override
  Widget build(BuildContext context) {
    var weatherModel = BlocProvider.of<GetWeatherCubit>(
      context,
    ).weatherModel; // that weatherModel for forked with all widget
    int code = weatherModel.weatherCode;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const SizedBox(height: 30),
          CustomText(),
          const SizedBox(height: 8),
          Text(
            weatherModel.weatherCondition,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Image.asset(getWeatherImage(weatherModel.weatherCode)),
          const SizedBox(height: 20),
          Row(
            children:  [
              Text(
                weatherModel.avgTemp.toString(),
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0f1c44),
                ),
              ),
              Spacer(),
              Text(
                "${weatherModel.maxTemp.round()}°",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0f1c44),
                ),
              ),
              SizedBox(width: 6),
              Text("${weatherModel.minTemp.round()}°", style: TextStyle(color: Colors.grey)),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WeatherStat(icon: Icons.air, text: "${weatherModel.maxWindKph.toString()} Km/h"),
              WeatherStat(icon: Icons.water_drop_outlined, text: "${weatherModel.humidity.toString()} %"),
              WeatherStat(icon: Icons.umbrella_outlined, text: "${weatherModel.chanceOfRain.toString()} °"),
            ],
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}


