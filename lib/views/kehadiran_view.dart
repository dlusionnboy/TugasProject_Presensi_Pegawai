import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:presensipegawai/views/dashboard_view.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              color: Colors.grey,
              elevation: 5,
              margin: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
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
                                  children: [
                                    Text(
                                      'Ilham Naffi',
                                      style: TextStyle(
                                        color: Colors.white,
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
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 180, 10, 400),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.grey,
              elevation: 5,
              margin: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Wrap(
                      children: [
                        _Tombol(
                          gambars: 'assets/map.png',
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        _Tombol(
                          gambars: 'assets/absen.png',
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 380, 10, 40),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.grey,
              elevation: 5,
              margin: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text('History',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold)),
                    Card(
                      color: Colors.blueGrey,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(8),
                      child: ListTile(
                        leading: Text(
                          '22 Agustus 2023',
                          style: TextStyle(fontSize: 16),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Text('10'),
                                Text('Masuk'),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text('01'),
                                Text('Izin'),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text('03'),
                                Text('Alpa'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blueGrey,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(8),
                      child: ListTile(
                        leading: Text(
                          '22 Agustus 2023',
                          style: TextStyle(fontSize: 16),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Text('10'),
                                Text('Masuk'),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text('01'),
                                Text('Izin'),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text('03'),
                                Text('Alpa'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blueGrey,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(8),
                      child: ListTile(
                        leading: Text(
                          '22 Agustus 2023',
                          style: TextStyle(fontSize: 16),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Text('10'),
                                Text('Masuk'),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text('01'),
                                Text('Izin'),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text('03'),
                                Text('Alpa'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      color: Colors.blueGrey,
                      elevation: 6,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      margin: EdgeInsets.all(8),
                      child: ListTile(
                        leading: Text(
                          '22 Agustus 2023',
                          style: TextStyle(fontSize: 16),
                        ),
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Column(
                              children: [
                                Text('10'),
                                Text('Masuk'),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text('01'),
                                Text('Izin'),
                              ],
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              children: [
                                Text('03'),
                                Text('Alpa'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Tombol extends StatelessWidget {
  final String gambars;
  const _Tombol({Key? key, this.gambars = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.blueGrey,
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Image.asset(
          gambars,
          width: 100,
        ),
      ),
    );
  }
}
