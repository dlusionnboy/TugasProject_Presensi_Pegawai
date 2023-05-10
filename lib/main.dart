import 'package:flutter/material.dart';
import 'package:presensipegawai/views/intro_view.dart';
import 'package:presensipegawai/views/login_view.dart';
import 'package:introduction_screen/introduction_screen.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(
        appBarTheme:
            AppBarTheme(backgroundColor: Color.fromARGB(255, 37, 90, 116))),
    home: IntroView(),
  ));
}
