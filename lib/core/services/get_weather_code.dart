import 'package:weather_app/core/utils/assets.dart';

String getWeatherImage(int code) {
  if (code == 1000) return Assets.imagesSunny;
  if (code <= 1030) return Assets.imagesCloudy;
  if (code <= 1201) return Assets.imagesRainy;
  if (code <= 1237) return Assets.imagesSnowy;

  return Assets.imagesCloudy;
}
