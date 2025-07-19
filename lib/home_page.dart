import 'package:flutter/material.dart';
import 'package:flutter_demo/learn_flutter.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(child: ElevatedButton(
      onPressed: (){
        Navigator.of(context).push(
          MaterialPageRoute(builder: (BuildContext context){
            return const LearnFlutterPage();
          })
        );
      }, 
      child: Text('Flutter Rocks')),);
  }
}