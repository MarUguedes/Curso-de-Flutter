

import 'package:flutter/material.dart';

class CityList extends StatefulWidget {
  const CityList({Key? key}) : super(key: key);

  @override
  State<CityList> createState() => _CityListState();
}

class _CityListState extends State<CityList> {
  bool value = false;
  @override
  Widget build(BuildContext context) {
    return Checkbox(
        value: value,
        onChanged: (newValue) {
          setState(() {
            value = newValue!;
          });
        });
  }
}
