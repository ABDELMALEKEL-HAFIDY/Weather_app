import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:weather_app/core/models/weather_model.dart';
import 'package:weather_app/core/services/weather_service.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Search City'),
        leading: IconButton(
          onPressed: () {
            context.go('/');
          },
          icon: Icon(Iconsax.back_square_copy, color: Color(0xff94D2BD)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              WeatherModel weatherModel = await WeatherService(
                Dio(),
              ).getCurrentWeather(cityName: value);
              log(weatherModel.cityName);
            },
            decoration: InputDecoration(
              hintText: "Search For Cities",
              suffixIcon: Icon(Iconsax.search_normal_copy),
              filled: true,
              fillColor: const Color.fromARGB(255, 235, 240, 238),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
                borderSide: BorderSide(
                  width: 5,
                  //color: Color(0xff94D2BD),
                ),
              ),

              //enabledBorder: OutlineInputBorder(
              // borderRadius: BorderRadius.circular(16),
              // borderSide: BorderSide(
              //  color: Color(0xff94D2BD),
              //  style: BorderStyle.solid
              //  ),),
            ),
          ),
        ),
      ),
    );
  }
}
