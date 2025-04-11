import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map2Marker extends StatefulWidget {
  const Map2Marker({super.key});

  @override
  State<Map2Marker> createState() => _Map2MarkerState();
}

class _Map2MarkerState extends State<Map2Marker> {

  late GoogleMapController mapController;

  //untuk marker atau titik di maps
  Set<Marker> markers = {};

  // final LatLng _center = const LatLng(45.521563, -122.677433);
  final LatLng _mapPNP = const LatLng(-0.9140136, 100.4647059);
  // final LatLng _center = const LatLng(-0.965600, 100.361214);


  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
    setState(() {
      //proses background penambahan UI marker
      markers.add(Marker(
        markerId: MarkerId('marker1'),
        position: _mapPNP,
        infoWindow: InfoWindow(title: 'Kampus Politeknik Negeri padang'),
      ));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Map PNP'),
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
          target: _mapPNP,
          zoom: 17.0,
        ),
        markers: markers,//ini untuk marker
      ),
    );
  }
}
