import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/login_page.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_textfield.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({super.key});
  static String id='registerPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:kPrimaryColor,
      body: Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ListView(children: [
          const SizedBox(height: 75,),
          Image.asset('assets/scholar.jpg',width:80,height: 80,),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
              Text("Scholar Chat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'pacifico'
              ),
              ),
           ],
         ),
       const SizedBox(height: 75,),
        const Row(
           children: [ Text("SIGN UP",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'pacifico'
            ),
            ),]
         ),
         const SizedBox(height: 15,),
         CustomTextfield("Email"),
        const SizedBox(height: 10,),
         CustomTextfield("Password"),
         const SizedBox(height: 15,),
       CustomButton(text: "SIGN UP"),
       const SizedBox(height: 10,),
      Row(mainAxisAlignment: MainAxisAlignment.center,  
      children: [
     const  Text('Already have account?',
       style: TextStyle(color: Colors.white),
       ),
      
        GestureDetector(
        onTap: (){
          Navigator.pop(context);
        },
         child: const Text(" Login",
         style: TextStyle(color: Color(0xffC7EDE6)),
         ),
       )
      ],),
    const  SizedBox(height: 140,),
        ],),
      ),
      ),
    );
  }
}