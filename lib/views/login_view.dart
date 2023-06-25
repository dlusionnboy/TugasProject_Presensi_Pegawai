import 'package:flutter/material.dart';
import 'package:presensipegawai/views/dashboard_view.dart';
import 'package:presensipegawai/views/lupa_password_view.dart';
import 'package:presensipegawai/views/registrasi_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        _Background(),
        _Segitiga(),
        _Logo(),
        SingleChildScrollView(
          child: InputLogin(
            obscure: true,
          ),
        ),
      ], //Childern atas
    ));
  }
}

class InputLogin extends StatelessWidget {
  final bool obscure;
  const InputLogin({Key? key, this.obscure = false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 220, 50, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Masuk',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Selamat Datang!',
            style: TextStyle(fontSize: 25),
          ),
          SizedBox(
            height: 25,
          ),
          Text('NIP'),
          TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Text('Password'),
          TextField(
            obscureText: obscure,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.fromLTRB(0, 10, 0, 0)),
            style: TextStyle(fontSize: 18),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => LupaPasswordView()));
                  },
                  child: const Text(
                    'Lupa Password',
                    style: TextStyle(
                        color: Colors.white, fontStyle: FontStyle.italic),
                  ))
            ],
          ),
          Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1A2C42),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => DashboardView()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Login',
                      style: TextStyle(fontSize: 18),
                    ),
                  ))),
          Container(
            margin: EdgeInsets.only(top: 180),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Klik disini untuk',
                  style: TextStyle(color: Colors.black),
                ),
                TextButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (c) => RegistrasiView()));
                    },
                    child: const Text(
                      'Registrasi',
                      style: TextStyle(
                          color: Colors.white, fontStyle: FontStyle.italic),
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _Segitiga extends StatelessWidget {
  const _Segitiga({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      //Membuat segitiga dalam waktu 6 jam
      clipper: ClipClipper(),
      child: Container(
        width: double.infinity,
        height: 200,
        color: Color(0xFF1A2C42),
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
      width: double.infinity,
      height: double.infinity,
      color: Color(0xFFECAF44),
    );
  }
}

class ClipClipper extends CustomClipper<Path> {
  // Class untuk membuat segitiga dalam waktu 2 jam

  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}

class _Logo extends StatelessWidget {
  const _Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(17, 47, 17, 17),
      child: Image.asset(
        'assets/logo.png',
        width: 70,
        height: 70,
        fit: BoxFit.cover,
      ),
    );
  }
}
