import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          width: double.infinity,
          color: Colors.orange,
        ),
        ClipPath(
          clipper: ClipCLipper(),
          child: Container(
            width: double.infinity,
            height: 200,
            color: Color.fromARGB(225, 22, 60, 78),
          ),
        ),
        // ignore: prefer_const_constructors
        Logo(),
        Padding(
          padding: const EdgeInsets.fromLTRB(50, 10, 50, 0),
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
              Text('Email'),
              TextField(
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Text('Password'),
              TextField(
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Masuk',
                        style: TextStyle(fontSize: 18),
                      ))),
              Text(
                'Ketuk Disini Untuk Registrasi',
                style: TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

class ClipCLipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class Logo extends StatelessWidget {
  const Logo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Image.asset(
        'assets/4.png',
        width: 70,
        height: 70,
        fit: BoxFit.cover,
      ),
    );
  }
}
