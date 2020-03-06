import 'package:flutter/material.dart';
import 'package:clima/services/location.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:clima/services/weather.dart';
import 'package:clima/screens/location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Location location = Location();
  @override
  void initState() {
    pushToLocationScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitFadingCircle(
          color: Colors.white,
          size: 100,
        ),
      ),
    );
  }

  void pushToLocationScreen() async {
    double latitude = await location.latitude;
    double longitude = await location.longitude;
    WeatherModel weatherModel = WeatherModel(
      lat: latitude,
      lon: longitude,
    );
    await weatherModel.getLocationWeatherData();

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LocationScreen(
          weatherModel: weatherModel,
        ),
      ),
    );
  }
}
