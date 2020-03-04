import 'package:http/http.dart';
import 'dart:convert';

class API {
  String url = 'http://api.openweathermap.org/data/2.5/weather?';
  String queryKey = '&appid=f65239a710645714ac909bb246490d71';

  Future<Map<String, dynamic>> getWeatherData(int lat, int lon) async {
    Response response;
    try {
      response = await get('${url}lat=$lat&lon=$lon$queryKey');
    } catch (e) {
      throw ('Error: $e');
    }
    return parsedData(jsonDecode(response.body));
  }

  Map<String, dynamic> parsedData(dynamic parsedJson) {
    return {
      'id': parsedJson['weather'][0]['id'],
      'main': parsedJson['weather'][0]['main'],
      'description': parsedJson['weather'][0]['description'],
      'temp': parsedJson['main']['temp'],
    };
  }
}
