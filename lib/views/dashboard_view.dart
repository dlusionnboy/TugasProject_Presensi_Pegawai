import 'package:flutter/material.dart';
import 'package:presensipegawai/views/login_view.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: GNav(
        backgroundColor: Color.fromARGB(255, 22, 60, 78), //warna background
        color: Colors.white,
        activeColor: Colors.black,
        tabBackgroundColor: Colors.grey,
        gap: 8,
        onTabChange: (index) {
          print(index);
        },
        padding: EdgeInsets.all(15),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.lock_clock,
            text: 'Kehadiran',
          ),
          GButton(
            icon: Icons.notification_important,
            text: 'Nontification',
          ),
          GButton(
            icon: Icons.settings,
            text: 'Settings',
          ),
        ],
      ),
      appBar: AppBar(
        leading: Container(
          padding: EdgeInsets.all(4),
          child: Image.asset('assets/logo.png'),
        ),
        title: Row(
          children: [
            Text(
              'Presensi Pegawai',
            ),
          ],
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: Stack(
        children: [
          _Background(),
          _InformasiPengguna(),
          Card(
            elevation: 0,
            margin: EdgeInsets.fromLTRB(0, 160, 0, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Column(
                children: [
                  Center(
                      child: Text(
                    'Pegawai Rajin',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                '07:30',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Jam Masuk',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            children: [
                              Text(
                                '07:30',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Jam Pulang',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Wrap(
                    children: [
                      TombolMenu(
                        image: Image.asset(
                          'assets/absen.png',
                          width: 50,
                        ),
                      ),
                      TombolMenu(
                        image: Image.asset(
                          'assets/pengguna.png',
                          width: 50,
                        ),
                      ),
                      TombolMenu(
                        image: Image.asset(
                          'assets/pengajuan_izin.png',
                          width: 50,
                        ),
                      ),
                      TombolMenu(
                        image: Image.asset(
                          'assets/riwayat.png',
                          width: 50,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TombolMenu extends StatelessWidget {
  final Image? image;
  const TombolMenu({Key? key, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 9,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      margin: EdgeInsets.all(8),
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: image ?? SizedBox(),
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
      padding: const EdgeInsets.fromLTRB(22, 60, 30, 0),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image.asset(
              'assets/boy.png',
              width: 75,
              height: 75,
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
                        color: Colors.white,
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
      height: 250,
      width: double.infinity,
      color: Colors.orange,
    );
  }
}

// ClipPath(
 //   clipper: ClipClipper(),
  //   child: Container(
  //     width: double.infinity,
  //     height: 200,
  //     color: Color.fromARGB(255, 22, 60, 78),
  //   ),
  // ),

// class ClipClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     Path path=Path();

//     path.lineTo(size.width, size.height);
//     path.lineTo(size.width, 0);

//     return path;
//   }

//   @override
//   bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;

// }