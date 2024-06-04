// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  
@override
  void initState() {
    super.initState();
    getlocation();
  }

 Future getlocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);
        print(position.latitude);
        print(position.latitude);
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


