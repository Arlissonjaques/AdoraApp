import 'package:adoraapp/mywidgets/app_bar.dart';
import 'package:adoraapp/mywidgets/button.dart';
import 'package:flutter/material.dart';





class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.folder_open),
        onPressed: (){},
        backgroundColor: Colors.cyan,
      ),

      appBar: CustomAppBar(),
      body: Container(
        padding: EdgeInsets.all(15),
        child: Column(
          
          children: [
            
            Container(
              padding: EdgeInsets.only(top: 50),
              child: Center(
                child: Text("Bem-Vindo(a)!", 
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 40, color: Color(0xff696969)),
                ),
              ),
            ),
            

            Container(
              padding: EdgeInsets.only(top: 90),
              child:Center(
                child: Text("Precione INICIAR para comerçar!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600, color: Color(0xff808080)),
                ),
              ),
            ),


            Container(
              padding: EdgeInsets.only(top: 70),
              child: customButtom(h: 65, w: 200, text: "INICIAR", varTextSize: 25.0),
              
            ),

          ],
        ),


      ),
      
    );
  }
}
