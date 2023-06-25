import 'package:flutter/material.dart';
import 'package:presensipegawai/providers/dashboard_provider.dart';
import 'package:presensipegawai/views/dashboard_view.dart';
import 'package:presensipegawai/views/kehadiran_view.dart';
import 'package:provider/provider.dart';

class RiwayatView extends StatelessWidget {
  const RiwayatView({super.key});

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
                  'Riwayat Hadir',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
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
                      'Jumat, 23 Juni 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('07.30'),
                            Text('Masuk'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('11.52'),
                            Text('Istirahat'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('16.00'),
                            Text('Keluar'),
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
                      'Kamis, 22 Juni 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('07.30'),
                            Text('Masuk'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('11.55'),
                            Text('Istirahat'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('16.00'),
                            Text('Keluar'),
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
                      'Rabu, 21 Juni 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('07.30'),
                            Text('Masuk'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('11.50'),
                            Text('Istirahat'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('16.00'),
                            Text('Keluar'),
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
                      'Selasa, 20 Juni 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('07.30'),
                            Text('Masuk'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('11.51'),
                            Text('Istirahat'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('16.00'),
                            Text('Keluar'),
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
                      'Senin, 19 Juni 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('07.30'),
                            Text('Masuk'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('11.50'),
                            Text('Istirahat'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('16.00'),
                            Text('Keluar'),
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
                      'Jumat, 16 Juni 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('07.30'),
                            Text('Masuk'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('11.50'),
                            Text('Istirahat'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('16.00'),
                            Text('Keluar'),
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
                      'Kamis, 15 Juni 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('07.30'),
                            Text('Masuk'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('11.50'),
                            Text('Istirahat'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('16.00'),
                            Text('Keluar'),
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
                      'Rabu, 14 Juni 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('07.30'),
                            Text('Masuk'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('11.50'),
                            Text('Istirahat'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('16.00'),
                            Text('Keluar'),
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
                      'Selasa, 13 Juni 2023',
                      style: TextStyle(fontSize: 16),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Column(
                          children: [
                            Text('07.30'),
                            Text('Masuk'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('11.50'),
                            Text('Istirahat'),
                          ],
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Column(
                          children: [
                            Text('16.00'),
                            Text('Keluar'),
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
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
      height: 123,
      width: double.infinity,
      color: Color(0xFFECAF44),
    );
  }
}
