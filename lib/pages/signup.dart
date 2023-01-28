import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController namaController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController sandiController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text('Daftar Akun'),
      ),
      body: Container(
        color: Colors.red,
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: namaController,
              decoration: InputDecoration(hintText: 'Masukan nama lengkap'),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'Masukan email anda'),
            ),
            SizedBox(
              height: 30,
            ),
            TextField(
              controller: sandiController,
              decoration:
                  InputDecoration(hintText: 'Kata sandi (6 characters)'),
            ),
            SizedBox(
              height: 30,
            ),
            InkWell(
              onTap: () async {
                await FirebaseAuth.instance.createUserWithEmailAndPassword(
                    email: emailController.text,
                    password: sandiController.text);
                if (FirebaseAuth.instance.userChanges() != null) {
                  Navigator.pushReplacementNamed(context, '/home');
                }
              },
              child: Container(
                child: Container(
                  height: 50,
                  alignment: Alignment.center,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Colors.white),
                  child: Text(
                    'Daftar',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signin');
                },
                child: Text(
                  'Sudah memiliki akun?\n Masuk',
                  style: TextStyle(color: Colors.blue, shadows: [Shadow()]),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 40,
              ),
            ),
            Expanded(
              child: Text(
                'Term of Use and Privacy Policy',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }
}
