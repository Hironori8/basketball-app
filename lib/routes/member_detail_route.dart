import 'package:flutter/material.dart';

class MemberDetail extends StatefulWidget{
  @override
  _MemberDetailState createState() => _MemberDetailState();
}

class _MemberDetailState extends State<MemberDetail> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text('メンバー')
      ),
      body: Card(
          child:Column(
            children: <Widget>[
              Image.asset('assets/rose.jpg'),
              Container(
                  margin: EdgeInsets.all(30.0),
                  child: ListTile(
                    title: Text("ローズくん"),
                  )
              )
            ],
          )
      ),
    );
  }
}
