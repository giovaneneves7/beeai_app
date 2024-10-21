import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(-11.327153, -41.864476), // Centraliza o mapa no local desejado
              zoom: 13.0, // Define o nível de zoom
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    point: LatLng(-11.327153, -41.864476),
                    width: 80.0,
                    height: 80.0,
                    builder: (context) => Icon(
                      Icons.location_pin,
                      color: Colors.red,
                      size: 40.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
