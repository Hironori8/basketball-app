import 'package:flutter/material.dart';
import '../tile.dart';

class Talk extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text('Talk')
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          Tile(
            icon: Icons.person,
            username: 'Hironori',
            message: 'Hello World',
          ),
          Tile(
            icon: Icons.person,
            username: 'Hironori',
            message: 'Hello World',
          ),
          Tile(
            icon: Icons.person,
            username: 'Hironori',
            message: 'Hello World',
          ),
          Tile(
            icon: Icons.person,
            username: 'Hironori',
            message: 'Hello World',
          ),
          Tile(
            icon: Icons.person,
            username: 'Hironori',
            message: 'Hello World',
          ),
          Tile(
            icon: Icons.person,
            username: 'Hironori',
            message: 'Hello World',
          ),
          Tile(
            icon: Icons.person,
            username: 'Hironori',
            message: 'Hello World',
          ),
          Tile(
            icon: Icons.person,
            username: 'Hironori',
            message: 'Hello World',
          ),
          Tile(
            icon: Icons.person,
            username: 'Hironori',
            message: 'Hello World',
          ),
          Tile(
            icon: Icons.person,
            username: 'Hironori',
            message: 'Hello World',
          ),
        ],
      ),


    );
  }
}
