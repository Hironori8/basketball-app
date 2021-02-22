import 'package:basketball/root.dart';
import 'package:flutter/material.dart';

class Start extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.min,
              children:<Widget>[
                Image.asset("assets/95s_icon.png"),
                Text(''),
                Text(''),
                Text(''),
                Text(''),
                OutlineButton(
                  child: Text('Start'),
                  onPressed:()=> Navigator.push(
                      context,
                      MaterialPageRoute(builder:(context)=>RootWidget()),
                    ),
                ),
              ],
            ),

          ),
    );
  }
}