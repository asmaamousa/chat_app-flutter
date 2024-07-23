import 'dart:developer';

import 'package:chat_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

// ignore: must_be_immutable
class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  static String id = 'registerPage';
  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      // ignore: avoid_unnecessary_containers
      body: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: ListView(
            children: [
              const SizedBox(height: 75),
              Image.asset(
                'assets/scholar.jpg',
                width: 80,
                height: 80,
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Scholar Chat",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'pacifico',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 75),
              const Row(
                children: [
                  Text(
                    "SIGN UP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontFamily: 'pacifico',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              CustomTextfield(
                onChanged: (data) {
                  email = data;
                },
                hinttext: "Email",
              ),
              const SizedBox(height: 10),
              CustomTextfield(
                onChanged: (data) {
                  password = data;
                },
                hinttext: "Password",
              ),
              const SizedBox(height: 15),
              CustomButton(
                text: "SIGN UP",
                onTap: () async {
                  if (email != null && password != null) {
                    var auth = FirebaseAuth.instance;
                    try {
                      UserCredential user =
                          await auth.createUserWithEmailAndPassword(
                        email: email!,
                        password: password!,
                      );
                      log('User Created Succfully');
                      // ignore: use_build_context_synchronously
                      log(user.user!.email.toString());
                    } catch (e) {
                      log(e.toString());
                      // Handle the error, e.g., show a dialog or a Snackbar
                    }
                  } else {
                    log("Email or Password is null");
                    // Show an error message to the user
                  }
                },
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Already have account?',
                    style: TextStyle(color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      " Login",
                      style: TextStyle(color: Color(0xffC7EDE6)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 140),
            ],
          ),
        ),
      ),
    );
  }
}
