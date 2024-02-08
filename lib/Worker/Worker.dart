import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Worker{
  String? location, temperature, humidity, airSpeed, description;

  Worker({required String loc}){
    location = loc;
    getData();
  }



  Future<void> getData() async {
    try{
      Response response = await get(Uri.parse(
          "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=2a7f2be37c2d2d8e95fa2c6bb7f0e2b1"));
      Map data = jsonDecode(response.body);

      // Location
      location = data['name'].toString();
      // Temperature
      Map main = data['main'];
      temperature = main['temp'].toString();
      // Humidity
      humidity = main['humidity'].toString();
      // Air Speed
      Map wind = data['wind'];
      airSpeed = wind['speed'].toString();
      // Description
      List weather = data['weather'];
      Map weatherData = weather[0];
      description = weatherData['description'].toString();
      showData();
    } catch (e){
      print("Exception Occurred: $e \n~Try to check city name again.");
    }
  }

  void showData() {
    if (location != "null") {
      print(
          "Temperature: ${temperature}\nWind Speed: ${airSpeed}\nName: ${location}");
    }
  }
}