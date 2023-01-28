import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignUpState();
}

class _SignUpState extends State<SignIn> {
  TextEditingController emailController = TextEditingController();
  TextEditingController sandiController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        elevation: 0,
        title: Text('Masuk Akun'),
      ),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: emailController,
              decoration: InputDecoration(hintText: 'Masukan email anda'),
            ),
            SizedBox(
              height: 50,
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
                await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: emailController.text,
                    password: sandiController.text);
                Navigator.pushNamed(context, '/home');
              },
              child: Container(
                height: 40,
                alignment: Alignment.center,
                width: 170,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    color: Colors.white),
                child: Text(
                  'Masuk',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Term of Use and Privacy Policy',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            )
          ],
        ),
      ),
    );
  }
}
