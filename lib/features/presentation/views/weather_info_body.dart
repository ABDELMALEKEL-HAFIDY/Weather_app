import 'package:flutter/material.dart';
import 'package:weather_app/core/models/weather_model.dart';
import 'package:weather_app/core/utils/assets.dart';
import 'package:weather_app/features/widgets/weather_widgets_%20stat.dart';

class WeatherInfoBody extends StatelessWidget {
  const WeatherInfoBody({super.key, required this.weatherModel});
  final WeatherModel weatherModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text(
            weatherModel.cityName,
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text(
            'cloudy',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          Image.asset(Assets.imagesFrame),
          const SizedBox(height: 20),
          Row(
            children: const [
              Text(
                "51°",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0f1c44),
                ),
              ),
              Spacer(),
              Text(
                "47°",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xff0f1c44),
                ),
              ),
              SizedBox(width: 6),
              Text("63°", style: TextStyle(color: Colors.grey)),
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              WeatherStat(icon: Icons.air, text: '106m/h'),
              WeatherStat(icon: Icons.water_drop_outlined, text: '22%'),
              WeatherStat(icon: Icons.umbrella_outlined, text: "11%"),
            ],
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}
