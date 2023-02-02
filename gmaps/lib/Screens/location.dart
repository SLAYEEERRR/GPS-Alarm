// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:gmaps/Screens/newalarm.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {
  const Location({super.key});

  @override
  State<Location> createState() => _LocationState();
}

class _LocationState extends State<Location> {
  /// Determine the current position of the device.
  ///
  /// When the location services are not enabled or permissions
  /// are denied the `Future` will return an error.
  Future<Position> _determinePosition() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      // Location services are not enabled don't continue
      // accessing the position and request users of the
      // App to enable the location services.
      return Future.error('Location services are disabled.');
    }

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        // Permissions are denied, next time you could try
        // requesting permissions again (this is also where
        // Android's shouldShowRequestPermissionRationale
        // returned true. According to Android guidelines
        // your App should show an explanatory UI now.
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      // Permissions are denied forever, handle appropriately.
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }

    // When we reach here, permissions are granted and we can
    // continue accessing the position of the device.
    return await Geolocator.getCurrentPosition();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.cyanAccent[400],
      // ignore: prefer_const_constructors
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(children: [
          const SizedBox(height: 200),
          const SizedBox(
            height: 100,
            width: 100,
            child:
                Icon(Icons.add_location_sharp, size: 100, color: Colors.white),
          ),
          const SizedBox(
            height: 320,
          ),
          ElevatedButton(
            onPressed: () {
              _determinePosition();
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NewAlarm()));
            },
            style: ElevatedButton.styleFrom(
              fixedSize: const Size(450.0, 50.0),
              backgroundColor: Colors.blueAccent[700],
              shape: const StadiumBorder(),
            ),
            child: Text(
              'Turn on GPS',
              style: GoogleFonts.comfortaa(
                  fontSize: 35, fontWeight: FontWeight.w700),
            ),
          ),
        ]),
      ),
    ));
  }
}
