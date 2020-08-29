import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';


Widget buttonFloat(){

  return SpeedDial(

    marginBottom: 30,
    marginRight: 30,

    animatedIcon: AnimatedIcons.menu_close,
    animatedIconTheme: IconThemeData(size: 22),
    backgroundColor: Colors.cyan,
    visible: true,
    curve: Curves.bounceIn,

    children: [
      //Button 1
      SpeedDialChild(
        child: Icon(Icons.assignment),
        backgroundColor: Colors.cyan,
        onTap: (){},
        label: 'Instruções',
        labelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 16.0),
        labelBackgroundColor: Colors.grey,
      ),

      //Button 2
      SpeedDialChild(
        child: Icon(Icons.folder),
        backgroundColor: Colors.cyan,
        onTap: (){},
        label: 'Temas/Perguntas',
        labelStyle: TextStyle(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 16.0),
        labelBackgroundColor: Colors.grey,
      ),
    ],

    

  );
  
}