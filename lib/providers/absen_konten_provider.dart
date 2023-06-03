import 'package:flutter/material.dart';
import 'package:presensipegawai/views/absen/absen_keluar_view.dart';
import 'package:presensipegawai/views/absen/absen_masuk_view.dart';
import 'package:presensipegawai/views/absen/absen_tengah_view.dart';

class AbsenKontenProvider with ChangeNotifier {
  int indextombol = 0;

  List<Widget> halamans = [
    AbsenMasukView(),
    AbsenTengahView(),
    AbsenKeluarView()
  ];

  Widget halamanSekarang() {
    return halamans[indextombol];
  }

  void ubahTampilan(int index) {
    indextombol = index;
    notifyListeners();
  }

  Color warnaTombolSekarang(int idx) {
    return idx == indextombol ? Colors.red : Colors.blue;
  }
}
