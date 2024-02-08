import 'package:flutter/material.dart';
import 'package:weather_app/Worker/Worker.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  String? temp, hum, air_speed, des, main;
  void startApp() async
  {
    Worker instance  = Worker(loc: "Dhar");
    await instance.getData();

    temp = instance.temperature;
    hum = instance.humidity;
    air_speed = instance.airSpeed;
    des = instance.description;
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      "temp_value" : temp,
      "hum_value" : hum,
      "air_speed_value" : air_speed,
      "des_value" : des,
      "main_value" : main
    } );
  }

  @override
  void initState() {
    // TODO: implement initState

    startApp();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Text("Loading")
      ),

    );
  }
}