import 'package:chat_app/screens/register_page.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor:const  Color(0xff2B475E),
      // ignore: avoid_unnecessary_containers
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
      const SizedBox(height: 75),
        const Row(
           children: [ Text("LOGIN",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontFamily: 'pacifico'
            ),
            ),]
         ),
         const SizedBox(height: 15,),
         CustomTextfield(hinttext: "Email",onChanged: (data){

         },),
        const SizedBox(height: 10,),
         CustomTextfield(hinttext:"Password",onChanged: (data){

         }),
         const SizedBox(height: 15,),
       CustomButton(text: 'LOGIN',),
       const SizedBox(height: 10,),
      Row(mainAxisAlignment: MainAxisAlignment.center,  
      children: [
      const Text('donnt have an account?',
       style: TextStyle(color: Colors.white),
       ),
      
       GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, RegisterPage.id);
        },
         child: const Text(" Sign Up",
         style: TextStyle(color: Color(0xffC7EDE6)),
         ),
       )
      ],),
    const SizedBox(height: 140,)
        ],),
      ),
      ),
    );
  }
}