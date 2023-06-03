// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:presensipegawai/Login/login_view.dart';
import 'package:presensipegawai/views/kehadiran_view.dart';
import 'package:presensipegawai/views/pengajuan_izin_view.dart';
import 'package:presensipegawai/views/pengguna_view.dart';
import 'package:presensipegawai/views/riwayat_view.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      appBar: AppBar(
        leading: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/logo.png'),
          ),
        ),
        title: const Text('Presensi Pegawai'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.power_settings_new,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (c) => LoginView()));
            },
          )
        ],
        backgroundColor: Colors.black12,
      ),
      body: Stack(
        children: [
          _InformasiPengguna(),
          SingleChildScrollView(
              child: Padding(
            padding: const EdgeInsets.only(top: 240),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              elevation: 0,
              margin: EdgeInsets.zero,
              child: Container(
                width: double.infinity,
                child: Column(
                  children: [
                    SizedBox(
                      height: 570,
                    ),
                  ],
                ),
              ),
            ),
          )),
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 190, 10, 460),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.brown,
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
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => KehadiranView()));
                          },
                          child: _TombolMenu(
                            gambar: 'assets/absen.png',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => RiwayatView()));
                          },
                          child: _TombolMenu(
                            gambar: 'assets/riwayat.png',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => PengajuanIzinView()));
                          },
                          child: _TombolMenu(
                            gambar: 'assets/pengajuan_izin.png',
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (c) => PenggunaView()));
                          },
                          child: _TombolMenu(
                            gambar: 'assets/pengguna.png',
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
            padding: const EdgeInsets.fromLTRB(10, 320, 10, 40),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: Colors.brown,
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
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    Card(
                      color: Colors.white,
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
                      color: Colors.white,
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
                      color: Colors.white,
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
                      color: Colors.white,
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
                      color: Colors.white,
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

class _TombolMenu extends StatelessWidget {
  final String gambar;
  const _TombolMenu({Key? key, this.gambar = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(18),
        child: Image.asset(
          gambar,
          width: 45,
        ),
      ),
    );
  }
}

class _Riwayat extends StatelessWidget {
  final String gambar;
  const _Riwayat({Key? key, this.gambar = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(8),
      child: Padding(
          padding: const EdgeInsets.all(20),
          child: Image.asset(
            gambar,
            width: 45,
          )),
    );
  }
}

class _InformasiPengguna extends StatelessWidget {
  const _InformasiPengguna({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 50, 20, 0),
      child: Row(
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'assets/boy.png',
                width: 80,
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
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '12210621',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'UI/UX',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Image.asset(
            'assets/bell.png',
            width: 50,
          ),
        ],
      ),
    );
  }
}
