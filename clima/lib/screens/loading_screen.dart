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
    String error = await location.getPosition();

    WeatherModel weatherModel = WeatherModel(
      lat: error == null ? location.latitude : 0,
      lon: error == null ? location.longitude : 0,
      err: error,
    );
    await weatherModel.getLocationWeatherData();

    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LocationScreen(
          weatherModel: weatherModel,
        ),
      ),
    );

    pushToLocationScreen();
  }
}
