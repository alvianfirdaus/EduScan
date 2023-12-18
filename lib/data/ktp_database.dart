import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:myapp/models/item.dart';

class KTPDatabase {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final FirebaseStorage storage = FirebaseStorage.instance;

  Future<void> save(Item item, Uint8List ktp, Uint8List wajah) async {
    final user = auth.currentUser;

    final ref = firestore.collection('users').doc(user!.uid).collection('ktps');

    final doc = await ref.doc();

    final storageRef = storage.ref('gambar_ktp').child(doc.id);

    final ktpRef = storageRef.child('ktp.jpg');
    final wajahRef = storageRef.child('wajah.jpg');

    await ktpRef.putData(ktp);
    await wajahRef.putData(wajah);

    await doc.set(item.toJson()
      ..addAll({
        'imageUrl': await ktpRef.getDownloadURL(),
        'wajahUrl': await wajahRef.getDownloadURL(),
      }));
  }
}
