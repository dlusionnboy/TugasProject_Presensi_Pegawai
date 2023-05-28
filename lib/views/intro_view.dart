import 'package:flutter/material.dart';
import 'package:presensipegawai/views/login_view.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroViev extends StatelessWidget {
  const IntroViev({super.key});

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 14),
        bodyPadding: EdgeInsets.all(30),
        bodyAlignment: Alignment.center,
        imagePadding: EdgeInsets.only(top: 20));
    return IntroductionScreen(
      globalBackgroundColor: Color(0xFFECAF44),
      pages: [
        PageViewModel(
            title: 'APLIKASI ABSENSI KARYAWAN',
            body:
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
            image: Image.asset('assets/pengguna.png'),
            decoration: pageDecoration),
        PageViewModel(
          title: 'SELAMAT DATANG',
          body:
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
          image: Image.asset('assets/mat.png'),
          decoration: pageDecoration,
        )
      ],
      onDone: () {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (builder) {
          return LoginView();
        }));
      },
      showNextButton: true,
      showDoneButton: true,
      showBackButton: false,
      back: Icon(Icons.arrow_back),
      next: Icon(Icons.arrow_forward),
      done: Text(
        'Done',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      dotsDecorator: DotsDecorator(
        size: Size(10, 10),
        color: Colors.grey,
        activeSize: Size(20, 10),
        activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(25))),
      ),
    );
  }
}
