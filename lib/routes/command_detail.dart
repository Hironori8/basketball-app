import 'package:flutter/material.dart';


class CommandDetail extends StatefulWidget{
  @override
  _CommandDetailState createState() => _CommandDetailState();
}
class _CommandDetailState extends State<CommandDetail> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text('作戦詳細')
      ),
      body: Card(
          child:Column(
            children: <Widget>[
              Image.asset("assets/saitama_stadium.jpg"),
              Container(
                  margin: EdgeInsets.all(30.0),
                  child: ListTile(
                    title: Text("埼玉スタジアム2002"),
                  )
              )
            ],
          )
      ),
    );
  }
}
