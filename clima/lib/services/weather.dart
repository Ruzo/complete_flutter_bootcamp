import "package:clima/keys.env";
import 'dart:convert';
import 'package:clima/services/networking.dart';

class WeatherModel {
  final double lat;
  final double lon;
  final String cityName;
  final String err;

  WeatherModel({this.lat, this.lon, this.cityName, this.err});

  String openWeatherMapUrl = 'http://api.openweathermap.org/data/2.5/weather?';
  String queryKey = '&appid=$WEATHERKEY';
  Map<String, dynamic> props = {
    'id': 1,
    'main': '',
    'description': '',
    'temp': 0,
    'city': '',
    'error': '',
  };

  Future<void> getLocationWeatherData() async {
    if (err != null) return setErrorStatus(err);
    String apiUrl =
        '${openWeatherMapUrl}lat=$lat&lon=$lon$queryKey&units=imperial';
    dynamic data;
    try {
      data = await API().getData(apiUrl);
    } catch (e) {
      return setErrorStatus(e);
    }
    var decodedData = jsonDecode(data);
    if (decodedData['cod'] == '400')
      return setErrorStatus('Weather data not found!');
    props = parsedData(decodedData);
    print(props);
  }

  Future<void> getCityWeatherData(String queryCity) async {
    if (err != null) return setErrorStatus(err);
    String apiUrl = '${openWeatherMapUrl}q=$queryCity$queryKey&units=imperial';
    dynamic data;
    try {
      data = await API().getData(apiUrl);
    } catch (e) {
      return setErrorStatus(e);
    }
    var decodedData = jsonDecode(data);
    if (decodedData['cod'] == '400')
      return setErrorStatus('Weather data not found!');
    props = parsedData(decodedData);
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
    if (condition == 0) {
      return '❌';
    } else if (condition < 300) {
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
    } else if (temp == -100) {
      return props['error'];
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
  String get error => props['error'];
  int get id => props['id'];

  void setErrorStatus(err) {
    props['id'] = 0;
    props['temp'] = -100;
    props['error'] = err;
    return;
  }
}
