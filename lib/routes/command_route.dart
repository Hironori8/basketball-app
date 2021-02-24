import 'package:flutter/material.dart';
import 'command_detail.dart';
class Command extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text('作戦')
      ),
      body: ListView(
          children:List.generate(3,(index){
            return InkWell(
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder: (context) => CommandDetail()));

              },
              child: Card(
                  child:Column(
                    children: <Widget>[
                      Container(
                          margin: EdgeInsets.all(30.0),
                          child: ListTile(
                            title: Text("作戦"),
                          )
                      )
                    ],
                  )
              ),
            );
          })
      ),
    );
  }
}
