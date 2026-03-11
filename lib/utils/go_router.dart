import 'package:go_router/go_router.dart';
import 'package:weather_app/views/home_view.dart';
import 'package:weather_app/views/search_view.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => HomeView()),
    GoRoute(path: '/search', builder: (context, state) => SearchView()),
  ],
);
