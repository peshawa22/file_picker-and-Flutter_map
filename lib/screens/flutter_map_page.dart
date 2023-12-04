import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
class FlutterMapPage extends StatelessWidget {
  const FlutterMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
        options:   const MapOptions(
            initialCenter: LatLng(35.715298, 51.404343),
            initialZoom: 5),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'com.example.app',
          ),
          const MarkerLayer(markers: [
            Marker(point: LatLng(35.715298, 51.404343), child: Icon(Icons.pin_drop,color: Colors.red,)),
            Marker(point: LatLng(36.7651, 45.7218), child: Icon(Icons.pin_drop,color: Colors.green,)),
          ]),
        ]);
  }
}
