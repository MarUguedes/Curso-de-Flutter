import 'package:flutter/material.dart';
import 'package:flutter_application_geolocation/topics/future_builder/wonderful_cities.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: WonderfulCities(),
    );
  }
}
