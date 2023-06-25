import 'package:flutter/material.dart';
import 'package:presensipegawai/providers/dashboard_provider.dart';
import 'package:presensipegawai/providers/foto_profile_provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:presensipegawai/views/dashboard_view.dart';
import 'package:presensipegawai/views/kehadiran_view.dart';
import 'package:provider/provider.dart';

class PenggunaView extends StatelessWidget {
  const PenggunaView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (c) => DashboardView()));
          },
          child: Image.asset('assets/logo.png'),
        ),
        title: Row(
          children: [
            Text('Profile',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                )),
            Padding(padding: EdgeInsets.fromLTRB(181, 10, 10, 10)),
          ],
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.save))],
        elevation: 0,
        centerTitle: false,
        backgroundColor: Color(0xFFECAF44),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            FotoProfile(),
            Form(
                child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  TextInputKu(
                    label: 'Nama Lengkap',
                  ),
                  TextInputKu(
                    label: 'email',
                  ),
                  TextInputKu(
                    label: 'Old Password',
                    obscureText: true,
                  ),
                  TextInputKu(
                    label: 'New Password',
                    obscureText: true,
                  ),
                  TextInputKu(),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}

class TextInputKu extends StatelessWidget {
  final String label;
  final ValueChanged? onChanged;
  final FormFieldValidator? validator;
  final TextEditingController? controller;
  final bool obscureText;

  const TextInputKu({
    super.key,
    this.label = '',
    this.onChanged,
    this.controller,
    this.validator,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        onChanged: (value) => (value),
        decoration: InputDecoration(
            labelText: '$label',
            border: OutlineInputBorder(),
            isDense: true,
            contentPadding: EdgeInsets.all(10)),
      ),
    );
  }
}

class FotoProfile extends StatelessWidget {
  const FotoProfile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<FotoProfileProvider>(builder: (context, prov, w) {
      return Center(
        child: InkWell(
          onTap: () {
            showDialog(
                context: context,
                builder: (c) {
                  return AlertDialog(
                    content: Text('Pilih sumber gambar'),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            prov.openPicker(ImageSource.camera);
                          },
                          child: Text('Kamera')),
                      TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                            prov.openPicker(ImageSource.gallery);
                          },
                          child: Text('Galeri')),
                    ],
                  );
                });
          },
          child: Stack(
            children: [
              Container(
                  width: 130,
                  height: 130,
                  decoration: BoxDecoration(
                      border: Border.all(width: 5, color: Colors.white),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('assets/boy.png'))),
                  child: prov.image()),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(width: 3, color: Colors.white),
                        color: Colors.amber),
                    child: Icon(
                      Icons.photo_camera,
                      color: Colors.black,
                    ),
                  )),
            ],
          ),
        ),
      );
    });
  }
}
