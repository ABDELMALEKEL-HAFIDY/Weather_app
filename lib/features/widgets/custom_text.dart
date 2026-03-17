import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/features/presentation/cubits/get_weather_cubit/get_weather_cubit.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key});

  @override
  Widget build(BuildContext context) {
   // BlocProvider.of<GetWeatherCubit>(context).weatherModel.cityName;
    return Text(
      BlocProvider.of<GetWeatherCubit>(context).weatherModel!.cityName,
      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
    );
  }
}