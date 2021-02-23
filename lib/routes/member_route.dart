import 'package:flutter/material.dart';
import 'member_pick_route.dart';

class Member extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('メンバー')
      ),
      body: ListView( 
        children:List.generate(3,(index){
          return InkWell(
            onTap: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => MemberDetail()));

            },
            child: Card(
              child:Column(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(30.0),
                    child: ListTile(
                      title: Text("ローズくん"),
                      leading: Image.asset('assets/rose.jpg'),
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