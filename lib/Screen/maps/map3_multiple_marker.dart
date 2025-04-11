import 'package:flutter/material.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

class Map3MultipleMarker extends StatefulWidget {
  const Map3MultipleMarker({super.key});

  @override
  State<Map3MultipleMarker> createState() => _Map3MultipleMarkerState();
}

class _Map3MultipleMarkerState extends State<Map3MultipleMarker> {

  late GoogleMapController mapController;

  // Define multiple marker positions
  final List<LatLng> _markerPositions = [
    LatLng(-0.9140136, 100.4647059),//pnp
    LatLng(-0.9152447, 100.4555771),//unand
    LatLng(-0.8972264, 100.3462268),//unp
    
  ];


  Set<Marker> _createMarkers(){
    Set<Marker> markers = {};
    for (int i = 0; i < _markerPositions.length; i++) {
      markers.add(
        Marker(
          markerId: MarkerId('marker_$i'),
          position: _markerPositions[i],
          infoWindow: InfoWindow(
            title: 'Point ${i + 1}',
            snippet:
            'Latitude: ${_markerPositions[i].latitude}, Longitude: ${_markerPositions[i].longitude}',
          ),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        ),
      );
    }
    return markers;
  }

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Map Kampus Padang'),
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
          target: _markerPositions[0],// ini multiple
          zoom: 17.0,
        ),
        markers: _createMarkers(),//ini untuk marker
      ),
    );
  }
}
