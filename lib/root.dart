import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'routes/member_route.dart';
import 'routes/talk_route.dart';
import 'routes/timeline_route.dart';
import 'routes/place_route.dart';
import 'routes/command_route.dart';


class RootWidget extends StatefulWidget{
  RootWidget({Key key}):super(key:key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget>{
  int _selectedIndex = 0;
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];

  static const _footerIcons = [
    //アイコンのリスト
    Icons.people,
    Icons.textsms,
    Icons.access_time,
    Icons.content_paste,
    Icons.place,
  ];

  static const _footerItemNames= [
    //アイテムの名前のリスト
    'Member',
    'Talk',
    'History',
    'Command',
    'Place',
  ];

  var _routes = [
    //routeディレクトリに入れた画面の制御
    Member(),
    Talk(),
    TimeLine(),
    Command(),
    Place(),
  ];

  @override
  void initState(){
    //状態の初期化
    super.initState();
    //indexが0のものは_UpdateActivateState
    _bottomNavigationBarItems.add(_UpdateActivateState(0));
    //indexが0以外のものは_UpdateDeactivateState
    for (var i = 1; i < _footerItemNames.length; i++){
      _bottomNavigationBarItems.add(_UpdateDeactivateState(i));
    }
  }

  BottomNavigationBarItem _UpdateActivateState(int index){
    //選択していないアイコンを灰色にする
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color:Colors.black87,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            color: Colors.black87,
          ),
        )
    );
  }

  BottomNavigationBarItem _UpdateDeactivateState(int index){
    //選択したアイコンを黒くする
    return BottomNavigationBarItem(
        icon: Icon(
          _footerIcons[index],
          color:Colors.black26,
        ),
        title: Text(
          _footerItemNames[index],
          style: TextStyle(
            color: Colors.black26,
          ),
        )
    );
  }

  void _onItemTapped(int index){
    //前に選んだアイコンを灰色に、現在タップしたアイコンを黒に変更する
    setState((){
      _bottomNavigationBarItems[_selectedIndex] = _UpdateDeactivateState(_selectedIndex);
      _bottomNavigationBarItems[index] = _UpdateActivateState(index);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: _routes.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items:_bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),

    );
  }
}
