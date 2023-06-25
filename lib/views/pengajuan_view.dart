import 'dart:io';

import 'package:flutter/material.dart';
import 'package:presensipegawai/views/dashboard_view.dart';
import 'package:iconsax/iconsax.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:file_picker/file_picker.dart';
import 'package:intl/intl.dart';
import 'package:presensipegawai/views/pengguna_view.dart';

class PengajuanView extends StatefulWidget {
  const PengajuanView({Key? key}) : super(key: key);

  @override
  State<PengajuanView> createState() => _Kalender();
}

class _Kalender extends State<PengajuanView> {
  TextEditingController datetimeinput = TextEditingController();
  TextEditingController datetimeinput1 = TextEditingController();

  File? _file;
  PlatformFile? _platformFile;

  selectFile() async {
    final file = await FilePicker.platform.pickFiles(
        type: FileType.custom, allowedExtensions: ['PDF', 'PNG', 'JPG', 'BMP']);

    if (file != null) {
      setState(() {
        _file = File(file.files.single.path!);
        _platformFile = file.files.first;
      });
    }
  }

  void initState() {
    datetimeinput.text = '';
    datetimeinput1.text = '';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1A2C42),
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
            Text('Pengajuan Izin',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                )),
            Padding(padding: EdgeInsets.fromLTRB(115, 10, 10, 10)),
            Image.asset(
              'assets/bell.png',
              width: 23,
            )
          ],
        ),
        elevation: 0,
        centerTitle: false,
        backgroundColor: Color(0xFFECAF44),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(35, 35, 35, 15),
                child: TextFormField(
                  controller: datetimeinput,
                  decoration: InputDecoration(
                      label: Text(
                        'Tanggal Mulai',
                        style: TextStyle(color: Colors.black),
                      ),
                      prefixIcon: Icon(Icons.calendar_today),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 5.0,
                          )),
                      fillColor: Colors.grey[50],
                      filled: true),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2023),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      String formatDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      setState(() {
                        datetimeinput.text = formatDate;
                      });
                    } else {
                      print('date tidak dipilih');
                      datetimeinput.text = '';
                    }
                  },
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 15),
                child: TextFormField(
                  controller: datetimeinput1,
                  decoration: InputDecoration(
                      label: Text(
                        'Tanggal Selesai',
                        style: TextStyle(color: Colors.black),
                      ),
                      prefixIcon: Icon(Icons.calendar_today),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 5.0,
                          )),
                      fillColor: Colors.grey[50],
                      filled: true),
                  readOnly: true,
                  onTap: () async {
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2023),
                      lastDate: DateTime(2100),
                    );
                    if (pickedDate != null) {
                      String formatDate =
                          DateFormat('yyyy-MM-dd').format(pickedDate);
                      setState(() {
                        datetimeinput1.text = formatDate;
                      });
                    } else {
                      print('date tidak dipilih');
                      datetimeinput1.text = '';
                    }
                  },
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: TextField(
                  decoration: InputDecoration(
                      label: Text(
                        'Alasan',
                        style: TextStyle(color: Colors.black),
                      ),
                      prefixIcon: Icon(Icons.border_color_outlined),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide(
                            color: Colors.black,
                            width: 5.0,
                          )),
                      fillColor: Colors.grey[50],
                      filled: true),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                GestureDetector(
                  onTap: selectFile,
                  child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 20.0),
                      child: DottedBorder(
                        borderType: BorderType.RRect,
                        radius: Radius.circular(10),
                        dashPattern: [10, 4],
                        strokeCap: StrokeCap.round,
                        color: Colors.blue.shade400,
                        child: Container(
                          width: double.infinity,
                          height: 100,
                          decoration: BoxDecoration(
                              color: Colors.blue.shade50.withOpacity(.3),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Iconsax.folder_open,
                                color: Colors.blue,
                                size: 40,
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Text(
                                'Select your file',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.grey.shade400),
                              ),
                            ],
                          ),
                        ),
                      )),
                ),
                _platformFile != null
                    ? Container(
                        padding: EdgeInsets.fromLTRB(35, 0, 35, 15),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Masukkan File',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white,
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.shade200,
                                        offset: Offset(0, 1),
                                        blurRadius: 3,
                                        spreadRadius: 2,
                                      )
                                    ]),
                                child: Row(
                                  children: [
                                    ClipRRect(
                                        borderRadius: BorderRadius.circular(8),
                                        child: Image.file(
                                          _file!,
                                          width: 70,
                                        )),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            _platformFile!.name,
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.black),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            '${(_platformFile!.size / 1024).ceil()} KB',
                                            style: TextStyle(
                                                fontSize: 13,
                                                color: Colors.grey.shade500),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                  ],
                                )),
                            SizedBox(
                              height: 15,
                            ),
                            MaterialButton(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              minWidth: double.infinity,
                              height: 45,
                              onPressed: () {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (c) => PenggunaView()));
                              },
                              color: Colors.grey,
                              child: Text(
                                'Upload',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          ],
                        ))
                    : Container(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
