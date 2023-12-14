import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:myapp/pages/history_v1.dart';
import 'package:myapp/routes/route.dart';
import 'package:myapp/widgets/custom_field_text.dart';
import 'package:myapp/widgets/custom_text_style.dart';

final _firebaseAuth = FirebaseAuth.instance;

class pageSignIn extends StatefulWidget {
  const pageSignIn({super.key});

  @override
  State<pageSignIn> createState() => _pageSignInState();
}

class _pageSignInState extends State<pageSignIn> {
  final _formKey = GlobalKey<FormState>();
  var enteredEmail = '';
  var enteredPassword = '';

  Future<void> _showErrorDialog(String message) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(
            'Login Gagal',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          content: Text(
            message,
            style: TextStyle(fontSize: 16),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text(
                'OK',
                style: TextStyle(
                  color: Colors.blue, // Ubah warna teks menjadi biru
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  void _submit() async {
    final isValid = _formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    _formKey.currentState!.save();

    try {
      final userCredentials = await _firebaseAuth.signInWithEmailAndPassword(
          email: enteredEmail, password: enteredPassword);

      print("Login successful: ${userCredentials.user?.uid}");
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) =>
                HistoryV(), // Ganti dengan halaman yang sesuai
          ));
    } on FirebaseAuthException catch (error) {
      var message = 'Username dan Password tidak sesuai';
      if (error.code == 'wrong-password') {
        message = 'Kata sandi dan password tidak sesuai';
      }
      _showErrorDialog(message);
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 70),
                  child: const Image(
                    image: AssetImage('assets/images/logoEduscan.png'),
                    width: 150,
                    height: 150,
                  )),
              Container(
                  padding: EdgeInsets.only(bottom: 40),
                  child: CustomTextStyle(
                    text: 'EduScan',
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  )),
              Container(
                  child: CustomTextStyle(
                text: 'Masuk ke akun Anda',
                fontSize: 17,
              )),
              SizedBox(
                height: 10,
              ),
              Container(
                child: CustomTextField(
                  label: 'Email',
                  hint: 'Masukkan Email',
                  textInputType: TextInputType.emailAddress,
                  validator: (value) {
                    if (value.isEmpty || !value.contains('@')) {
                      return 'Email tidak valid';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    enteredEmail = value!;
                  },
                ),
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
                      true, // Tambahkan properti showVisibilityIcon
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ButtonBar(
                alignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      print("email :$enteredEmail");
                      print("pw :$enteredPassword");
                      _submit();
                      // Navigator.pushNamed(context, Routes.riwayat);
                    },
                    style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(300, 50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                    ),
                    child: Text(
                      'Masuk',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(bottom: 10),
                child: Text(
                  'Atau',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
              OutlinedButton(
                  style: ButtonStyle(
                      minimumSize: MaterialStatePropertyAll(Size(300, 50)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                          side: BorderSide(
                            width: 10.0,
                            color: Color(0xff03a1fe),
                          ),
                        ),
                      )),
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.signUp);
                  },
                  child: Text(
                    'Daftar',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
