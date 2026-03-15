String getWeatherImage(int code) {
  if (code == 1000) {
    return 'assets/images/sunny.png';
  }

  if (code >= 1003 && code <= 1030) {
    return 'assets/images/cloudy.png';
  }

  if (code >= 1063 && code <= 1201) {
    return 'assets/images/rainy.png';
  }

  if (code >= 1204 && code <= 1237) {
    return 'assets/images/snowy.png';
  }

  return 'assets/images/default.png';
}