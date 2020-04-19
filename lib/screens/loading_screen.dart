import 'dart:convert';
import 'package:flutter/material.dart';
import '../services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = '67d0576815bc493ab97ae90232e7710e';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double latitude;
  double longitude;

  //initState only happens once, it runs only once. We are running getLocation as soon as the screen opens.
  @override
  void initState() {
    super.initState();
    getLocation();
    getData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();
    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelpder networkHelpder
  }

  void getData() async {

      double temperature = decodedData['main']['temp'];
      int condition = decodedData['weather'][0]['id'];
      String cityName = decodedData['name'];

      print(temperature);
      print(condition);
      print(cityName);

    }
  }

  // Build gets called again and again and again
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
