import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:weather_app/api/MapApi.dart';
import 'package:weather_app/model/WeatherData.dart';
import 'package:weather_app/ui/Weather.dart';


class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  WeatherData _weatherData;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCurrentLocation();
    
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(widget.title),
      ),
      body: _weatherData !=null ? Weather(weatherData: _weatherData):
      Center(
        child: CircularProgressIndicator(
          strokeWidth: 4.0,
          valueColor: AlwaysStoppedAnimation(Colors.tealAccent),
        ),
      ),
      backgroundColor: Colors.lightBlue,

    );
  }

  getCurrentLocation(){
    loadWeather(lat: 23.77, lon: 90.39);

  }


  loadWeather({double lat, double lon}) async {
    MapApi mapApi = MapApi.getInstance();
    final data = await mapApi.getWeather(lat:lat, lon:lon);

    setState(() {
      this._weatherData = data;
    });
  }
}
