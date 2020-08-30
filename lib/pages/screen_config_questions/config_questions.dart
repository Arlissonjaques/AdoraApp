import 'package:adoraapp/pages/screen_config_questions/questions.dart';
import 'package:adoraapp/pages/screen_config_questions/themes.dart';
import 'package:adoraapp/widgets/app_bar.dart';
import 'package:flutter/material.dart';





class HomeEstudo extends StatefulWidget {
  @override
  _HomeEstudoState createState() => _HomeEstudoState();
}

class _HomeEstudoState extends State<HomeEstudo> {

  int _currentIndex = 0;
  final List<Widget> _children = [
    Themes(),
    Questions()
  ];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),

      body: Container(
        padding: EdgeInsets.only(top: 20, right: 20, left: 20),
        child: _children[_currentIndex],
      ),

      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Temas'),
            backgroundColor: Colors.yellow,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            title: Text('Perguntas')
          )
        ],
      ),
    );
  }

  void onTabTapped(int index){
    setState(() {
      _currentIndex = index;
    });
  }


}