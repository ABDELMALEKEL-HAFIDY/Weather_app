import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/core/utils/go_router.dart';
import 'package:weather_app/features/presentation/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/core/utils/get_themeColor.dart';
import 'package:weather_app/features/presentation/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/features/widgets/weather_widgets_%20stat.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetWeatherCubit(),
      child: Builder(
        builder: (context) => BlocBuilder<GetWeatherCubit, WeatherState>(
          builder: (context, state) {
            return MaterialApp.router(
              routerConfig: router,
              theme: ThemeData(
                primarySwatch: getThemeColor(
                  BlocProvider.of<GetWeatherCubit>(
                    context,
                  ).weatherModel?.weatherCondition,
                ),
              ),
              debugShowCheckedModeBanner: false,
            );
          },
        ),
      ),
    );
  }
}
