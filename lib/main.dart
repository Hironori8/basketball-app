import 'package:basketball/next_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  String text = '次へ';
  final myFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('中野のアプリ'),
        actions: <Widget>[
          Icon(Icons.add),
          Icon(Icons.share),
        ],
      ),
       body:Container(
         width:double.infinity,
         child: Column(
           children: <Widget>[
             TextField(
               autofocus: true,
               decoration: InputDecoration(
                   hintText: '名前',
               ),
               onChanged: (text) {
                 print("First text field: $text");
               },
             ),
             TextField(
              focusNode: myFocusNode,
               decoration: InputDecoration(
                 hintText: '趣味',
               ),
             ),
             RaisedButton(
              child: Text('新規登録'),
               onPressed: (){
                myFocusNode.requestFocus();
               },
             ),
           ],
         ),
       ),
       floatingActionButton: FloatingActionButton(
         onPressed: _incrementCounter,
         tooltip: 'Increment',
         child: Icon(Icons.add),
       ),

       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
