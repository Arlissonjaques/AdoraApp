import 'package:flutter/material.dart';


Color gradientStartColor = Color(0xfff45d27);
Color gradientEndColor = Color(0xfff5851f);

double heightAppBar = 300.0;


class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{

  CustomAppBar({Key key}) : preferredSize = Size.fromHeight(heightAppBar), super(key: key);
  
  @override
  final Size preferredSize;

  @override
  _CustomAppBarState createState() => _CustomAppBarState();

}

class _CustomAppBarState extends State<CustomAppBar>{

  @override
  Widget build(BuildContext context){

    return Stack(
      children: [
        Scaffold(
          
          appBar: PreferredSize(
              preferredSize: Size.fromHeight(heightAppBar),//const Size(double.infinity, kToolbarHeight),
              child: Container(
                
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.only(bottomRight: Radius.circular(100.0)),
                  color: Colors.cyan,
                  
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 3.0,
                    )
                  ]
                  // gradient: LinearGradient(
                  //   begin: Alignment.topCenter,
                  //   end: Alignment.bottomCenter,
                  //     colors: [
                  //       gradientStartColor,
                  //       gradientEndColor
                  //     ],
                  // ),
                ),
                
              ),
          ),
        ),

        Center(
          child: Image.asset("assets/images/logo.png", height: 120,),
        ),
      ],
    );
  }
}