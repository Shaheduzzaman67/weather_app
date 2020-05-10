import 'dart:convert';

class WeatherData {
  final String name;
  final double temp;
  final String main;
  final String icon;

  WeatherData ({this.name, this.temp, this.main, this.icon});

  static WeatherData  deserialize (String json){
    JsonDecoder decoder = JsonDecoder();
    var map = decoder.convert(json);
  }


}