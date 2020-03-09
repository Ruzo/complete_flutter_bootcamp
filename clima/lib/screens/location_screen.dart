import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';
import 'package:clima/screens/city_screen.dart';

class LocationScreen extends StatefulWidget {
  @override
  _LocationScreenState createState() => _LocationScreenState();

  final WeatherModel weatherModel;
  LocationScreen({this.weatherModel});
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weather;
  String cityName;
  String temperature;
  String weatherIcon;
  String message;
  String city;
  String errorMessage;

  @override
  void initState() {
    weather = widget.weatherModel;
    updateUI();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstOut),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.my_location,
                      size: 50.0,
                    ),
                  ),
                  FlatButton(
                    onPressed: () async {
                      cityName = await Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CityScreen()),
                      );
                      print(cityName);
                      if (cityName != null) {
                        await weather.getCityWeatherData(cityName);
                        updateUI();
                      }
                      print(weather.city);
                    },
                    child: Icon(
                      Icons.location_city,
                      size: 50.0,
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: <Widget>[
                    Text(
                      temperature,
                      style: kTempTextStyle,
                    ),
                    Text(
                      weatherIcon,
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 15.0),
                child: Text(
                  weather.id != 0 ? "$message in $city!" : message,
                  textAlign: TextAlign.right,
                  style: kMessageTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  updateUI() {
    setState(() {
      temperature = weather.id != 0 ? weather.temperature.toString() : 'Error!';
      weatherIcon = weather.weatherIcon;
      message = weather.message;
      city = weather.id != 0 ? weather.city : '';
      errorMessage = weather.error;
    });
  }
}
