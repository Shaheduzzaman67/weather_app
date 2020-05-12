

import 'package:http/http.dart' show Client;
import 'package:weather_app/model/WeatherData.dart';


class MapApi{

  static const _apikey = '3a2b96d1705089e678f1b52d7079261e';
  static const _endpoint = 'https://api.openweathermap.org/data/2.5';

  double lat, lon;

  Client client = Client();

  static MapApi _instance;
  static MapApi getInstance() => _instance ??= MapApi();

  String _callapi({double lat, double lon}){
    return _endpoint + "/weather?lat=" + lat.toString() + "&lon=" + lon.toString() + "&APPID=" + _apikey + "&units=metric" ;
  }

  getWeather({double lat, double lon}) async {
    var response = await client.get(
      Uri.encodeFull(_callapi (lat: lat, lon: lon)),
      headers: {
        'Accept': 'application/json'
      }
    );
    return WeatherData.deserialize(response.body);
  }
}
