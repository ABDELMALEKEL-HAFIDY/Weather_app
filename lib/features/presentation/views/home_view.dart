import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:weather_app/features/presentation/cubits/get_weather_cubit/get_weather_cubit.dart';
import 'package:weather_app/features/presentation/cubits/get_weather_cubit/get_weather_state.dart';
import 'package:weather_app/features/presentation/views/search_view.dart';
import 'package:weather_app/features/presentation/views/weather_info_body.dart';
import 'package:weather_app/features/widgets/no_weather_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff2f2f2),
      appBar: AppBar(
        backgroundColor: const Color(0xfff2f2f2),
        leading: IconButton(
          icon: Icon(Iconsax.menu_1_copy, color: Color(0xff94D2BD)),
          onPressed: () {},
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: IconButton(
              icon: Icon(Iconsax.search_normal_copy, color: Color(0xff94D2BD)),
              onPressed: () {
                context.go('/search');
              },
            ),
          ),
        ],
      ),
      body: BlocBuilder<GetWeatherCubit, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitialState) {
            return NoWeatherBody();
          } else if (state is WeatherLoadedSate) {
            return WeatherInfoBody(
              weatherModel: state.weatherModel,
            );
          } else {
            return Text('Opps there was an error');
          }
        },
      ),

      //weatherModel ==null ? const NoWeatherBody(): WeatherInfoBody(),// i use Ternary operator
    );
  }
}
// create status
// create cubit
//create function
//provide cubit
//integrate cubit
//trigger cubit