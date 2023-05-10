import 'package:flutter/material.dart';
import 'package:presensipegawai/views/login_view.dart';
import 'package:presensipegawai/views/registrasi_view.dart';
import 'package:presensipegawai/views/ubah_password_view.dart';

class LupaPasswordView extends StatelessWidget {
  const LupaPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.orange,
          ),
          ClipPath(
            clipper: ClipClipper(),
            child: Container(
              width: double.infinity,
              height: 200,
              color: Color.fromARGB(255, 22, 60, 78),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Image.asset(
              'assets/logo.png',
              width: 60,
              height: 60,
              fit: BoxFit.cover,
            ),
          ),
          SingleChildScrollView(child: _InputLupaPassword()),
        ],
      ),
    );
  }
}

class _InputLupaPassword extends StatelessWidget {
  const _InputLupaPassword({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(50, 270, 50, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Lupa Password',
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
          Text('Email'),
          TextField(
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
                        MaterialPageRoute(builder: (c) => LoginView()));
                  },
                  child: const Text(
                    'Back to login',
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
          Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 123, 152, 167),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => UbahPasswordView()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      'Kirim',
                      style: TextStyle(fontSize: 18),
                    ),
                  ))),
          Container(
            margin: EdgeInsets.only(top: 110),
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
