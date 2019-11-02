import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMap extends StatefulWidget {
  @override
  _MyMapState createState() => _MyMapState();
}

class _MyMapState extends State<MyMap> {
  Completer<GoogleMapController> _controller = Completer();
  Set<Marker> _markers = {
    Marker(
      markerId: MarkerId("house_1"),
      position: LatLng(47.599399, -122.324909),
    ),
    Marker(
      markerId: MarkerId("house_2"),
      position: LatLng(47.601684, -122.328375),
    ),
    Marker(
      markerId: MarkerId("house_3"),
      position: LatLng(47.600364, -122.327718),
    ),
  };

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      padding: EdgeInsets.all(25),
      mapType: MapType.normal,
      initialCameraPosition: CameraPosition(target: LatLng(47.600364, -122.327718), zoom: 14),
      markers: _markers,
      onMapCreated: (GoogleMapController controller) {
        _controller.complete(controller);
      },
    );
  }

  // Future<void> requestPermission() async {
  //   await PermissionHandler().requestPermissions([PermissionGroup.location]);
  // }
}
