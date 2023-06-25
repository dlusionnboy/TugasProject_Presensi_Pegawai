import 'package:flutter/material.dart';
import 'package:presensipegawai/views/kehadiran_view.dart';

class AbsenTengahView extends StatelessWidget {
  const AbsenTengahView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(color: Colors.white38),
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Text("11 Juni 2023"),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Text(
                    "07.30",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text("Masuk", style: TextStyle(fontSize: 13)),
                ],
              ),
              Column(
                children: [
                  Text(
                    "11.50",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text("Istirahat", style: TextStyle(fontSize: 13)),
                ],
              ),
              Column(
                children: [
                  Text(
                    "16.00",
                    style: TextStyle(fontSize: 18),
                  ),
                  Text("Pulang", style: TextStyle(fontSize: 13)),
                ],
              )
            ],
          ),
          Padding(padding: const EdgeInsets.all(17)),
          Center(
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0xFF1A2C42),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      )),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (c) => KehadiranView()));
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 50),
                    child: Text(
                      'ISTIRAHAT',
                      style: TextStyle(fontSize: 18),
                    ),
                  ))),
        ],
      ),
    );
  }
}
