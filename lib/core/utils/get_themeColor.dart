import 'package:flutter/material.dart';



MaterialColor getThemeColor(String condition) {
  switch (condition.toLowerCase()) {

    case 'sunny':
    case 'clear':
      return Colors.orange;

    case 'partly cloudy':
      return Colors.lightBlue;

    case 'cloudy':
    case 'overcast':
      return Colors.blueGrey;

    case 'mist':
    case 'fog':
    case 'freezing fog':
      return Colors.grey;

    case 'patchy rain possible':
    case 'patchy light rain':
    case 'light rain':
    case 'moderate rain at times':
    case 'moderate rain':
    case 'heavy rain at times':
    case 'heavy rain':
    case 'light rain shower':
    case 'moderate or heavy rain shower':
    case 'torrential rain shower':
      return Colors.blue;

    case 'patchy snow possible':
    case 'patchy light snow':
    case 'light snow':
    case 'patchy moderate snow':
    case 'moderate snow':
    case 'patchy heavy snow':
    case 'heavy snow':
    case 'light snow showers':
    case 'moderate or heavy snow showers':
      return Colors.lightBlue;

    case 'patchy sleet possible':
    case 'light sleet':
    case 'moderate or heavy sleet':
    case 'light sleet showers':
    case 'moderate or heavy sleet showers':
      return Colors.teal;

    case 'patchy freezing drizzle possible':
    case 'freezing drizzle':
    case 'heavy freezing drizzle':
    case 'light freezing rain':
    case 'moderate or heavy freezing rain':
      return Colors.cyan;

    case 'thundery outbreaks possible':
    case 'patchy light rain with thunder':
    case 'moderate or heavy rain with thunder':
    case 'patchy light snow with thunder':
    case 'moderate or heavy snow with thunder':
      return Colors.deepPurple;

    case 'blowing snow':
    case 'blizzard':
      return Colors.blue;

    case 'ice pellets':
    case 'light showers of ice pellets':
    case 'moderate or heavy showers of ice pellets':
      return Colors.blueGrey;

    default:
      return Colors.blueGrey;
  }
}
