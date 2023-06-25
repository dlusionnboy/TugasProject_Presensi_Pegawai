import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:presensipegawai/providers/absen_konten_provider.dart';
import 'package:presensipegawai/views/dashboard_view.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:presensipegawai/providers/peta_provider.dart';
import 'package:presensipegawai/providers/dashboard_provider.dart';
import 'package:presensipegawai/views/peta_view.dart';
import 'package:provider/provider.dart';

class KehadiranView extends StatelessWidget {
  const KehadiranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(builder: (context, provider, Widget) {
      return Scaffold(
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (c) => DashboardView()));
              },
              child: Image.asset('assets/logo.png'),
            ),
            title: Row(
              children: [
                Text(
                  'Presensi Pegawai',
                  style: TextStyle(fontSize: 17, color: Colors.black),
                ),
                Padding(padding: EdgeInsets.all(50)),
                Image.asset(
                  'assets/bell.png',
                  width: 23,
                )
              ],
            ),
            elevation: 0,
            centerTitle: false,
            backgroundColor: Color(0xFFECAF44),
          ),
          body: provider.indexTombol == 0
              ? DashboardPanel()
              : provider.indexTombol == 1
                  ? KehadiranView()
                  : SizedBox());
    });
  }
}

class DashboardPanel extends StatelessWidget {
  const DashboardPanel({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        _Background(),
        _InformasiPengguna(),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 100, 10, 350),
          child: Card(
            color: Color(0xFF1A2C42),
            elevation: 5,
            margin: EdgeInsets.zero,
            child: Container(
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(20)),
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(7),
                  child: PetaView(),
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(10, 360, 10, 20),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.white,
            elevation: 5,
            margin: EdgeInsets.zero,
            child: Container(
              width: double.infinity,
              color: Color(0xFF1A2C42),
              child: Consumer<AbsenKontenProvider>(builder: (context, prov, w) {
                return Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'KEHADIRAN',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Padding(padding: const EdgeInsets.all(10)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              prov.ubahTampilan(0);
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: prov.warnaTombolSekarang(0),
                            ),
                            child: Text('Masuk')),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              prov.ubahTampilan(1);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: prov.warnaTombolSekarang(1)),
                            child: Text('Istirahat')),
                        SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              prov.ubahTampilan(2);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: prov.warnaTombolSekarang(2)),
                            child: Text('Keluar')),
                      ],
                    ),
                    Container(child: prov.halamanSekarang())
                  ],
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}

class _InformasiPengguna extends StatelessWidget {
  const _InformasiPengguna({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 1, 1, 1),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/boy.png',
              width: 57,
              height: 57,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Muhammad Nur',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '12210675',
                    style: TextStyle(fontSize: 15),
                  ),
                  Text(
                    'CYNICAL POET',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 95,
      width: double.infinity,
      color: Color(0xFFECAF44),
    );
  }
}
