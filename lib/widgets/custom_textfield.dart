import 'package:flutter/material.dart';

class CustomTextfield extends StatelessWidget {
   CustomTextfield(this.hinttext);
 String? hinttext;
  @override
  Widget build(BuildContext context) {
    return   TextField(
        decoration:InputDecoration(
          hintText: hinttext,
          hintStyle: const TextStyle(color: Colors.white),
      //دا لما اضغط عليه
          focusedBorder:const  OutlineInputBorder(borderSide: 
          BorderSide(
            color: Colors.white
          )),
          // دا لما يكون البوردر في حالته العادية
          enabledBorder: const OutlineInputBorder(borderSide: 
          BorderSide(
            color: Colors.white
          )),
         // دا الشكل العام بتاع البوردر 
          border: const OutlineInputBorder(borderSide: 
          BorderSide(
            color: Colors.white
          )
          )
        ),
        );
  }
}