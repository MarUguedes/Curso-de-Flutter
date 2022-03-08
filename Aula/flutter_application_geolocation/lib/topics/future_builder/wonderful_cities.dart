import 'package:flutter/material.dart';
import 'package:flutter_application_geolocation/components/cityList.dart';
import 'package:flutter_application_geolocation/components/geolocationError.dart';
import 'package:flutter_application_geolocation/topics/future_builder/geolocation.dart';

class WonderfulCities extends StatefulWidget {
  const WonderfulCities({Key? key}) : super(key: key);

  @override
  State<WonderfulCities> createState() => _WonderfulCitiesState();
}

class _WonderfulCitiesState extends State<WonderfulCities> {
  final geolocation = Geolocation();
  late Future<bool> hasLocationPermissionFuture;
  @override
  void initState() {
    super.initState();
    hasLocationPermissionFuture = geolocation.checkPermission();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cidades Maravilhosas'),
      ),
      body: FutureBuilder<bool>(
        builder: ((context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            final hasPermission = snapshot.data;
            if (hasPermission != null && hasPermission) {
              return const CityList();
            }
            return GeolocationError(
                icon: Icons.lock,
                title: 'Sem permissão',
                description: 'Precisamos de permissão para trabalhar',
                actionText: 'Dar permissão',
                action: () async {
                  final hasPermission = await geolocation.requestPermission();
                  {
                    setState(() {
                      hasLocationPermissionFuture = Future.value(hasPermission);
                    });
                  }
                });
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        }),
        future: hasLocationPermissionFuture,
      ),
    );
  }
}
