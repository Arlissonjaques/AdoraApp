import 'package:flutter/material.dart';


Widget customButtom({double h, double w, String text, Color color, double varTextSize}){
  
  return Container(
    height: h,
    width: w,
    
    child: Material(
      elevation: 5,
      borderRadius: BorderRadius.all(Radius.circular(40)),
      color: Colors.cyan,

      child: InkWell(
        child: Center(
          child: Text(text, 
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: varTextSize, color: Colors.white),
          )
        )
      ),
    ),
  );
}
