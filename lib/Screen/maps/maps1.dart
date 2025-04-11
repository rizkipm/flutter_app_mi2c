import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PageMap1 extends StatefulWidget {
  const PageMap1({super.key});

  @override
  State<PageMap1> createState() => _PageMap1State();
}

class _PageMap1State extends State<PageMap1> {

  late GoogleMapController mapController;

  // final LatLng _center = const LatLng(45.521563, -122.677433);
  final LatLng _center = const LatLng(-0.9345797, 100.2261133);
  // final LatLng _center = const LatLng(-0.965600, 100.361214);

  //LATIHAN
  //Buat 1 buah file maps dart untuk titik kampus politeknik negeri padang
  //demo untuk map1 dan map pnp

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.green[700],

      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          elevation: 2,
        ),
        body: GoogleMap(

          //costumize UI maps
          // mapType: MapType.normal, // Change to other map types
          mapType: MapType.terrain,
          myLocationButtonEnabled: true,//aktifkan button lokasi sekarang
          myLocationEnabled: true,
          compassEnabled: true,

          //compass and gesture
          zoomGesturesEnabled: true,
          tiltGesturesEnabled: true,
          rotateGesturesEnabled: true,
          scrollGesturesEnabled: true,

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
