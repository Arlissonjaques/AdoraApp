import 'package:flutter/material.dart';
import 'package:adoraapp/widgets/button.dart';


class Themes extends StatelessWidget {

  List _toDoList = ["Morte", "Sofrimento", "Morte", "Morte", "Sofrimento", "Morte", "Morte", "Sofrimento", "Morte"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      body: Container(
        child: Column(
          children: [
            
            Container(
              padding: EdgeInsets.only(bottom: 20),
              alignment: Alignment.centerLeft,
              child: Text("Temas", 
                style: TextStyle(fontSize: 40)),
            ),

            Row(
              children: [
              
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Adicionar tema...",
                    ),
                  ),
                ),
                
                //------------------------------------------------

                Container(
                  padding: EdgeInsets.only(left: 15),
                  child: customButtom(h: 50, w: 100, text: "Adicionar",),
                )

              ],
            ),

            Expanded(
              child: ListView.builder(
                itemCount: _toDoList.length,
                padding: EdgeInsets.only(top: 15),
                itemBuilder: ((context, index){
                  return ListTile(
                    title: Text(_toDoList[index]),
                  );
                }),
                
              ),
            ),
          ],
        )
      ),
    );

    
  }
}
