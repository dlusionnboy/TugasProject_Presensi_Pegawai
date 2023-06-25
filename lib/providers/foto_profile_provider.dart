import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;

class FotoProfileProvider with ChangeNotifier {
  File? foto;

  Future openPicker(ImageSource source) async {
    var izinCamera = await Permission.camera.status;

    if (izinCamera != PermissionStatus.granted) {
      izinCamera = await Permission.camera.request();
    }
    if (izinCamera != PermissionStatus.granted) {
      return false;
    }

    ImagePicker().pickImage(source: source).then((value) {
      if (value != null) {
        foto = File(value.path);
        notifyListeners();
      }
    });
  }

  Image image() {
    if (foto == null) {
      return Image.asset('assets/boy.png');
    }
    return Image.file(foto!);
  }
}
