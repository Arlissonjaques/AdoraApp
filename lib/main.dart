import 'package:adoraapp/pages/screen_config_questions/config_questions.dart';
import 'package:flutter/material.dart';
import 'package:adoraapp/pages/screen_config_questions/themes.dart';



void main(){
  runApp(MaterialApp(
    home: HomeEstudo(),
    debugShowCheckedModeBanner: false,

    theme: ThemeData(
      hintColor: Colors.black,
      primaryColor: Colors.cyan,
      inputDecorationTheme: InputDecorationTheme(
        enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.cyan)),
        border: OutlineInputBorder(borderRadius: BorderRadius.all(Radius.circular(100.0))),
      hintStyle: TextStyle(color: Colors.grey),
      )
    ),
    
  ));
}
