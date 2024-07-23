import 'package:chat_app/screens/login_page.dart';
import 'package:chat_app/screens/register_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'firebase_options.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
    );
  runApp(const ScholarChat());
}
 class ScholarChat extends StatelessWidget {
  const ScholarChat({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      routes:{"LoginPage": (context)=>const LoginPage(),
      RegisterPage.id:(context)=> RegisterPage()
      },
      initialRoute: 'LoginPage',
    );
  }
}
