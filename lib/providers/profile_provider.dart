// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;

// class ProfileProvider with ChangeNotifier {
//   GlobalKey<FormState> formKey = GlobalKey();
//   bool loading = false;
//   TextEditingController txtNama = TextEditingController();
//   TextEditingController txtEmail = TextEditingController();
//   TextEditingController txtNew = TextEditingController();
//   TextEditingController txtOld = TextEditingController();

//   Future kirimData() async {
//     loading = true;
//     notifyListeners();

//     Map hasil = {'code': 0, 'pesan': 'Tidak terhubung ke server'};
//     try {
//       final uri = Uri.parse(API.nodePengguna);
//       final r = await http.patch(uri, headers: API.header(), body: {
//         'nama_lengkap': txtNama.value.text,
//         'email': txtEmail.value.text,
//         'password': txtNew.value.text,
//         'old_password': txtOld.value.text,
//       });
//       print('isi ${r.body}');
//       final obj = jsonDecode(r.body);
//       hasil['code'] = r.statusCode;
//       if (r.statusCode != 200) {
//         hasil['pesan'] = obj['pessan'];
//       }
//     } catch (e) {}

//     loading = false;
//     notifyListeners();
//     return hasil;
//   }
// }
