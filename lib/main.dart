import 'package:flutter/material.dart';
import 'package:weather_app/core/utils/go_router.dart';


void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      //theme: ThemeData.light(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}
