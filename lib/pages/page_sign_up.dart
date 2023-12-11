import 'package:myapp/routes/route.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/widgets/custom_field_text.dart';
import 'package:myapp/widgets/custom_text_style.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

final _firebaseAuth = FirebaseAuth.instance;

class pageSignUp extends StatefulWidget {
  pageSignUp({
    super.key,
  });

  @override
  State<pageSignUp> createState() => _pageSignUpState();
}

class _pageSignUpState extends State<pageSignUp> {
  final _formKey = GlobalKey<FormState>();
  var enteredName = '';
  var enteredEmail = '';
  var enteredPassword = '';
  var enteredPasswordRepeat = '';

  void _submit() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();
    try {
      final userCredentials =
          await _firebaseAuth.createUserWithEmailAndPassword(
        email: enteredEmail,
        password: enteredPassword,
      );

      // Menyimpan nama pengguna ke Firebase Authentication
      await userCredentials.user!.updateDisplayName(enteredName);

      // Menyimpan informasi tambahan ke Firestore
      await FirebaseFirestore.instance
          .collection('users')
          .doc(userCredentials.user!.uid)
          .set({
        'name': enteredName,
        // Anda dapat menambahkan informasi tambahan lainnya di sini sesuai kebutuhan
      });

      print("Registration successful: ${userCredentials.user?.uid}");
      Navigator.pushNamed(context, Routes.riwayat);
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Center(
              child: Column(children: [
                Container(
                    padding: EdgeInsets.symmetric(vertical: 50),
                    child: const Image(
                      image: AssetImage('assets/images/logoEduscan.png'),
                      width: 100,
                      height: 100,
                    )),
                Container(
                  padding: EdgeInsets.only(bottom: 30),
                  child: CustomTextStyle(
                    text: 'Selamat Datang di EduScan',
                    fontWeight: FontWeight.w600,
                    fontSize: 23,
                  ),
                ),
                Container(
                  child: CustomTextStyle(text: 'Buat akun EduScan anda.'),
                ),
                Container(
                  child: CustomTextField(
                    label: 'Nama Lengkap',
                    hint: 'Masukkan Nama Lengkap',
                    textInputType: TextInputType.name,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Nama tidak boleh kosong';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      enteredName = value!;
                    },
                  ),
                ),
                Container(
                  child: CustomTextField(
                      label: 'Email',
                      hint: 'Masukkan Email',
                      textInputType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value.isEmpty || !value.contains('@')) {
                          return 'Email tidak tidak valid';
                        }
                        return null;
                      },
                      onSaved: (value) {
                        enteredEmail = value!;
                      }),
                ),
                Container(
                  child: CustomTextField(
                    label: 'Password',
                    hint: 'Masukkan Password',
                    textInputType: TextInputType.visiblePassword,
                    hiddenText: true,
                    validator: (value) {
                      if (value.isEmpty || value.length < 8) {
                        return 'Password kurang dari 8 karakter';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      enteredPassword = value!;
                    },
                    showVisibilityIcon:
                        true, // Tampilkan ikon mata untuk input password
                  ),
                ),
                Container(
                  child: CustomTextField(
                    label: 'Ulangi Password',
                    hint: 'Masukkan Ulang Password',
                    textInputType: TextInputType.visiblePassword,
                    hiddenText: true,
                    validator: (value) {
                      if (value.isEmpty || value.length < 8) {
                        return 'Password kurang dari 8 karakter';
                      }
                      return null;
                    },
                    onSaved: (value) {
                      enteredPasswordRepeat = value!;
                    },
                    showVisibilityIcon:
                        true, // Tampilkan ikon mata untuk ulangi password juga
                  ),
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        _submit();
                        //Navigator.pushNamed(context, Routes.signIn);
                      },
                      style: ButtonStyle(
                        minimumSize: MaterialStatePropertyAll(Size(300, 50)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                      ),
                      child: Text(
                        'Daftar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                      ),
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, Routes.signIn);
                  },
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: Text.rich(
                      TextSpan(
                        text: 'Sudah memiliki akun? ',
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Masuk',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
