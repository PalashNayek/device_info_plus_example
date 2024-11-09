import 'package:device_info_plus_example/di/setup_locator.dart';
import 'package:device_info_plus_example/screens/device_info_screen.dart';
import 'package:flutter/material.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Device Info App',
      home: DeviceInfoScreen(),
    );
  }
}
