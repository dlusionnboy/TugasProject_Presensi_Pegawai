import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';

class PetaProvider with ChangeNotifier {
  void mulai_bacalokasi() {}

  void stop_bacalokasi() {}

  Future<bool> cekIzin() async {
    return true;
  }

  Future _bacalokasi() async {}

  void turunkan_akurasi() {}

  void naikkan_akurasi() {}
}
