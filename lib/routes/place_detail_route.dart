import 'package:flutter/material.dart';


class PlaceDetail extends StatefulWidget{
  @override
  _PlaceDetailState createState() => _PlaceDetailState();
}
class _PlaceDetailState extends State<PlaceDetail> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text('練習場所一覧')
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