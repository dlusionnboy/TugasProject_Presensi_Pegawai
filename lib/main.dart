import 'package:flutter/material.dart';
import 'package:presensipegawai/views/dashboard_view.dart';
import 'package:presensipegawai/login/intro_view.dart';
import 'package:presensipegawai/login/login_view.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:presensipegawai/providers/dashboard_provider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    builder: (context, Widget) {
      return const MaterialApp(
        home: IntroView(),
      );
    },
    providers: [
      ChangeNotifierProvider(create: (c) => DashboardProvider()),
    ],
  ));
}
