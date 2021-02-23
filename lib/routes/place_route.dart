import 'package:flutter/material.dart';
import 'place_detail_route.dart';

class Place extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
          title: Text('練習場所一覧')
      ),
      body: ListView(
        children:List.generate(2,(index){
          return InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => PlaceDetail()));
            },
            child: Card(
                child:Column(
                  children: <Widget>[
                    Container(
                        margin: EdgeInsets.all(30.0),
                        child: ListTile(
                          title: Text("埼玉スタジアム2002"),
                          leading: Image.asset('assets/saitama_stadium.jpg'),
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
