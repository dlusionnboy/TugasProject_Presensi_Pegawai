// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

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
        actions: [Icon(Icons.logout)],
        backgroundColor: Colors.black12,
      ),

      body: Stack(
        children: [
          _InformasiPengguna(),

          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)
                  )
                ),
                elevation: 0,
                margin: EdgeInsets.zero,
                  child: Container(
                    width: double.infinity,
                      child: Column(
                        children: [
                          SizedBox(height: 580,),
                    ],
                  ),
                ),
              ),
            )
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 140, 10, 500),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
              ),
              color: Colors.brown,
              elevation: 5,
                  margin: EdgeInsets.zero,
                    child: Container(
                      width: double.infinity,
                        child: Column(
                          children: [
                            SizedBox(height: 10,),
                            
                            Wrap(
                              children: [
                                _Riwayat(gambar: 'assets/absen.png',),
                                _Riwayat(gambar: 'assets/pengguna.png',),
                                _Riwayat(gambar: 'assets/pengajuan_izin.png',),
                              ],
                            ),
                          ],
                        ),
                      ),
            ),
          ),
          
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 280, 10, 365),
            child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)
                ),
                color: Colors.brown,
                elevation: 5,
                    margin: EdgeInsets.zero,
                      child: Container(
                        width: double.infinity,
                          child: Column(
                            children: [
                              SizedBox(height: 10,),
                      Wrap(
                        children: [
                          _TombolMenu(gambar: 'assets/absen.png',),
                          _TombolMenu(gambar: 'assets/riwayat.png',),
                          _TombolMenu(gambar: 'assets/pengajuan_izin.png',),
                          _TombolMenu(gambar: 'assets/pengguna.png',),
                      ],
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
        child: Image.asset(gambar, width: 45,),),
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
        child: Image.asset(gambar, width: 45,)
      ),
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
              child: Image.asset('assets/boy.png', 
                width: 60,)),
                  Expanded(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Ilham Naffi', style: TextStyle(
                          color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold,
                        ),),
                        Text('12210621', style: TextStyle(
                          color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold,
                        ),),
                        Text('UI/UX', style: TextStyle(
                          color: Colors.black, fontSize: 13, fontWeight: FontWeight.bold,
                        ),),
                      ],
                    ),
                  ),
          Image.asset('assets/bell.png', width: 30,),
        ],
      ),
    );
  }
}

