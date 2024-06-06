// ignore_for_file: unused_local_variable
import '../functions/location.dart';
import 'package:flutter/material.dart';
import '../services/networking.dart';



const appKey = '548ce84fcca0c08a7d1453e0d77487cd';
class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double? latitude;
  double? longitude;
  @override
  void initState() {
    super.initState();
    
  }

    getLocationData() async {
    Location location = Location();
    await location.getCurrentlocation();
    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = await NetworkHelper('https://api.openweathermap.org/data/3.0/onecall?lat=33.44&lon=-94.04&appid={API key}');
   var weatherDatan= networkHelper.getData(); 
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
