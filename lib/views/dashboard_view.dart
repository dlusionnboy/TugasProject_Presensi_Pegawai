import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:presensipegawai/providers/dashboard_provider.dart';
import 'package:presensipegawai/views/kehadiran_view.dart';
import 'package:presensipegawai/views/login_view.dart';
import 'package:presensipegawai/views/pengajuan_view.dart';
import 'package:presensipegawai/views/pengguna_view.dart';
import 'package:presensipegawai/views/riwayat_view.dart';
import 'package:provider/provider.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardProvider>(builder: (context, provider, Widget) {
      return Scaffold(
          appBar: AppBar(
            leading: Container(
              padding: EdgeInsets.all(7),
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
        Card(
          elevation: 5,
          margin: EdgeInsets.fromLTRB(10, 100, 10, 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
          color: Color(0xFF1A2C42),
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                Center(
                    child: Text(
                  'Menu',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (c) => KehadiranView()));
                      },
                      child: TombolMenu(
                        gambar: 'assets/absen.png',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (c) => RiwayatView()));
                      },
                      child: TombolMenu(
                        gambar: 'assets/riwayat.png',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (c) => PengajuanView()));
                      },
                      child: TombolMenu(
                        gambar: 'assets/pengajuan_izin.png',
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (c) => PenggunaView()));
                      },
                      child: TombolMenu(
                        gambar: 'assets/pengguna.png',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Riwayat Hadir',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
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
                      'Juni 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('15'),
                            Text('Hadir'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('0'),
                            Text('Tidak Hadir'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('0'),
                            Text('Terlambat'),
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
                      'Mei 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('19'),
                            Text('Hadir'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('01'),
                            Text('Tidak Hadir'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('01'),
                            Text('Terlambat'),
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
                      'April 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('14'),
                            Text('Hadir'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('0'),
                            Text('Tidak Hadir'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('02'),
                            Text('Terlambat'),
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
                      'Maret 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('20'),
                            Text('Hadir'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('01'),
                            Text('Tidak Hadir'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('0'),
                            Text('Terlambat'),
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
                      'Februari 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('20'),
                            Text('Hadir'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('0'),
                            Text('Tidak Hadir'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('0'),
                            Text('Terlambat'),
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
                      'Januari 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('21'),
                            Text('Hadir'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('0'),
                            Text('Tidak Hadir'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('0'),
                            Text('Terlambat'),
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
      ],
    );
  }
}

class TombolMenu extends StatelessWidget {
  final String gambar;
  const TombolMenu({Key? key, this.gambar = ''}) : super(key: key);

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
          width: 30,
        ),
      ),
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
      height: 123,
      width: double.infinity,
      color: Color(0xFFECAF44),
    );
  }
}
