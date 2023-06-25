import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:presensipegawai/providers/peta_provider.dart';
import 'package:provider/provider.dart';
import 'package:presensipegawai/views/peta_view.dart';
import 'package:latlong2/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;

class PetaView extends StatelessWidget {
  const PetaView({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = context.read<PetaProvider>();

    return Scaffold(
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: prov.latLng,
              onPositionChanged: (position, hasGesture) {
                print(prov.mapController.zoom);
                prov.hitungulang();
              },
              onMapReady: () {
                prov.mapReady = true;
                prov.mapController.move(prov.latLng, 18);
              },
            ),
            children: [
              TileLayer(
                urlTemplate:
                    'https://mt3.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',
              ),
              Consumer<PetaProvider>(builder: (context, prov, w) {
                return CircleLayer(
                  circles: [
                    CircleMarker(
                        point: prov.titiktengah,
                        color: Colors.blue.withOpacity(0.4),
                        radius: prov.radius)
                  ],
                );
              }),
              MarkerLayer(
                markers: [
                  Marker(
                    point: prov.latLng,
                    builder: (context) {
                      return Icon(
                        Icons.circle,
                        color: Colors.blue,
                        size: 10,
                      );
                    },
                  )
                ],
              )
            ],
            mapController: prov.mapController,
          ),
          Consumer<PetaProvider>(
            builder: (context, value, child) {
              return ElevatedButton(
                  onPressed: () {},
                  child: value.hitungjarak() > 30
                      ? Text('Diluar jangkauan')
                      : Text('di dalam jangkauan'));
            },
          )
        ],
      ),
    );
  }
}

// import 'package:presensipegawai/providers/peta_provider.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:provider/provider.dart';
// // import 'package:flutter_map_location_marker/flutter_map_location_marker.dart';

// class PetaView extends StatelessWidget {
//   const PetaView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final prov = context.read<PetaProvider>();
//     return Scaffold(
//       body: Stack(
//         children: [
//           FlutterMap(
//             options: MapOptions(
//               center: prov.latLng,
//               onMapReady: () {
//                 prov.mapReady = true;
//               },
//             ),
//             children: [
//               TileLayer(
//                 urlTemplate:
//                     'https://mt3.google.com/vt/lyrs=m&x={x}&y={y}&z={z}',
//               ),
//               MarkerLayer(
//                 markers: [
//                   Marker(
//                     point: prov.latLng,
//                     builder: (context) {
//                       return Icon(
//                         Icons.navigation_rounded,
//                         color: Colors.red,
//                         size: 20,
//                       );
//                     },
//                   )
//                 ],
//               )
//             ],
//             mapController: prov.mapController,
//           )
//         ],
//       ),
//     );
//   }
// }