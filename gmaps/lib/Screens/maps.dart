import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// // // ignore: non_constant_identifier_names
// // String google_maps_key = "AIzaSyC7EDaqk4VOpXgI9RE5OGW8r-YyMikJCzQ";

void main() => runApp(const Maps());

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MyAppState();
}

class _MyAppState extends State<Maps> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(45.521563, -122.677433);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          backgroundColor: Colors.blueAccent[700],
        ),
        body: GoogleMap(
          // mapType: MapType.hybrid,
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
