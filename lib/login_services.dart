import 'package:cloud_firestore/cloud_firestore.dart';

class LoginService {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  Future<void> addMessage({
    String? email,
    String? password,
  }) async {
    try {
      firestore.collection('login').add({
        'email': email,
        'password': password,
      }).then(
        (value) => print('Pesan berhasil dikirim'),
      );
    } catch (e) {
      throw Exception('Pesan Gagal Dikirim!');
    }
  }
}
