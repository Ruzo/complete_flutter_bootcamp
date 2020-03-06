import "package:clima/keys.env";
import 'dart:convert';
import 'package:clima/services/networking.dart';

class WeatherModel {
  final double lat;
  final double lon;

  WeatherModel({this.lat, this.lon});

  String openWeatherMapUrl = 'http://api.openweathermap.org/data/2.5/weather?';
  String queryKey = '&appid=$WEATHERKEY';
  Map<String, dynamic> props = {
    'id': 0,
    'main': '',
    'description': '',
    'temp': 0,
  };

  Future<void> getLocationWeatherData() async {
    String apiUrl =
        '${openWeatherMapUrl}lat=$lat&lon=$lon$queryKey&units=imperial';
    dynamic data;
    try {
      data = await API().getData(apiUrl);
    } catch (e) {
      throw ('Error: $e');
    }
    props = parsedData(jsonDecode(data));
    print(props);
  }

  Map<String, dynamic> parsedData(dynamic parsedJson) {
    return {
      'id': parsedJson['weather'][0]['id'],
      'main': parsedJson['weather'][0]['main'],
      'description': parsedJson['weather'][0]['description'],
      'temp': parsedJson['main']['temp'].toInt(),
      'city': parsedJson['name'],
    };
  }

  String _weatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String _message(int temp) {
    if (temp > 77) {
      return 'It\'s 🍦 time';
    } else if (temp > 68) {
      return 'Time for shorts and 👕';
    } else if (temp < 50) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }

  String get weatherIcon => _weatherIcon(props['id'].toInt());
  String get message => _message(props['temp']);
  String get temperature => props['temp'].toString();
  String get city => props['city'];
}
