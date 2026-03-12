import 'package:go_router/go_router.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:weather_app/views/search_view.dart';
import 'package:weather_app/widgets/weather_info_body.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeView()),
    GoRoute(path: '/search', builder: (context, state) => SearchView()),
    //GoRoute(path: '/home', builder: (context, state) => WeatherInfoBody()),
  ],
);
