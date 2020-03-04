import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Location location = Location();
  API weatherApi = API();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          onPressed: () async {
            int latitude = await location.latitude;
            int longitude = await location.longitude;
            print('Latitude: $latitude');
            print('Longitude: $longitude');
            Map weatherData =
                await weatherApi.getWeatherData(latitude, longitude);
            print('Weather data: $weatherData');
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
