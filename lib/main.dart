import 'package:flutter/material.dart';
import 'package:presensipegawai/providers/peta_provider.dart';
import 'package:presensipegawai/views/dashboard_view.dart';
import 'package:presensipegawai/views/intro_view.dart';
import 'package:presensipegawai/views/login_view.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:presensipegawai/providers/dashboard_provider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    builder: (
      context,
      Widget,
    ) {
      context.read<PetaProvider>().mulai_bacalokasi();
      return const MaterialApp(
        home: DashboardView(),
      );
    },
    providers: [
      ChangeNotifierProvider(create: (c) => PetaProvider()),
    ],
  ));
}
