import 'package:flutter/material.dart';
import 'start.dart';

void main(){
  runApp(App());
}

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'90s teams app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.blueGrey[300],
      ),
      home: Start(),
    );
  }
}