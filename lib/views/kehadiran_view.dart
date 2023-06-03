import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:presensipegawai/providers/absen_konten_provider.dart';
import 'package:presensipegawai/views/dashboard_view.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:presensipegawai/providers/peta_provider.dart';
import 'package:presensipegawai/views/peta_view.dart';
import 'package:provider/provider.dart';

class KehadiranView extends StatelessWidget {
  const KehadiranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (c) => DashboardView()));
          },
        ),
        title: const Text(
          'ABSEN',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.black12,
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 600),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.white,
              elevation: 5,
              margin: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    _panelUser(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 180, 10, 420),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.white,
              elevation: 5,
              margin: EdgeInsets.zero,
              child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(20)),
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: PetaView(),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 360, 10, 20),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.white,
              elevation: 5,
              margin: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                child:
                    Consumer<AbsenKontenProvider>(builder: (context, prov, w) {
                  return Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'KEHADIRAN',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
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
      ),
    );
  }

  Wrap _panelUser() {
    return Wrap(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/boy.png',
                    width: 100,
                  )),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ilham Naffi',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '12210621',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'UI/UX',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
