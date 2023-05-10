import 'package:flutter/material.dart';
import 'package:presensipegawai/views/login_view.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  Widget _buildImage(String assetName, [double width = 400]) {
    return Image.asset('assets/$assetName', width: width);
  }

  @override
  Widget build(BuildContext context) {
    const pageDecoration = PageDecoration(
        titleTextStyle: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        bodyTextStyle: TextStyle(fontSize: 18),
        bodyPadding: EdgeInsets.all(20),
        bodyAlignment: Alignment.center,
        imagePadding: EdgeInsets.only(top: 20));
    return IntroductionScreen(
      globalBackgroundColor: Colors.orange,
      pages: [
        PageViewModel(
            title: 'Introduction screen',
            body:
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
            image: _buildImage('usher.png'),
            decoration: pageDecoration),
        PageViewModel(
          title: 'Introduction screen 2',
          body:
              "aLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
          image: _buildImage('mat.png'),
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
      showSkipButton: true,
      showBackButton: false,
      back: Icon(Icons.arrow_back),
      next: Icon(Icons.arrow_forward),
      skip: Text(
        'skip',
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
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
