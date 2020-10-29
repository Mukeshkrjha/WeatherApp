import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:weatherapp/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weatherapp/util/weather.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeatherData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationData: weatherData,
      );
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Weather App'),
        ),
        body: Center(
          child: SpinKitFadingCircle(
            color: Colors.yellow,
            size: 50.0,
          ),
        ));
    ;
  }
}
