import 'package:flutter/material.dart';
import 'package:presensipegawai/providers/absen_konten_provider.dart';
import 'package:presensipegawai/providers/peta_provider.dart';
import 'package:presensipegawai/views/kehadiran_view.dart';
import 'package:presensipegawai/views/pengajuan_izin_view.dart';
import 'package:presensipegawai/views/peta_view.dart';
import 'package:presensipegawai/views/dashboard_view.dart';
import 'package:presensipegawai/login/intro_view.dart';
import 'package:presensipegawai/login/login_view.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:presensipegawai/providers/dashboard_provider.dart';
import 'package:provider/provider.dart';

void main(List<String> args) {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (c) => DashboardProvider()),
      ChangeNotifierProvider(create: (c) => PetaProvider()),
      ChangeNotifierProvider(create: (c) => AbsenKontenProvider()),
    ],
    builder: (context, Widget) {
      context.read<PetaProvider>().mulai_bacalokasi();
      return MaterialApp(
        home: PengajuanIzinView(),
      );
    },
  ));
}
