import 'package:flutter/material.dart';
import 'package:weather_app/Worker/Worker.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  // Date Time Api
  // void getData() async {
  //   String time = '';
  //   String timezone = '';
  //
  //   Future<void> getTime() async {
  //     final response = await get(
  //         Uri.parse('http://worldtimeapi.org/api/timezone/Asia/Kolkata'));
  //
  //     if (response.statusCode == 200) {
  //       Map<String, dynamic> data = json.decode(response.body);
  //       print(data);
  //       time = data['datetime'];
  //       timezone = data['timezone'];
  //     } else {
  //       // Handle error
  //       print('Failed to load time and timezone');
  //     }
  //   }
  //   await getTime();
  //   print(time);
  //   print(timezone);
  // }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Activity"),
      ),
      body: const Column(
        children: [
          Text("j"),
        ],
      ),
    );
  }
}
