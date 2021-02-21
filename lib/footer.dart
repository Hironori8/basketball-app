import 'package:flutter/material.dart';

class Footer extends StatefulWidget{
  const Footer();
  @override
  _Footer createState() => _Footer();
}

class _Footer extends State<Footer>{
  int _selectedIndex = 0;
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];

  static const _footerIcons = [
    //アイコンのリスト
    Icons.home,
    Icons.textsms,
    Icons.access_time,
    Icons.content_paste,
    Icons.work,
  ];

  static const _footerItemNames= [
    //アイテムの名前のリスト
    'Home',
    'Talk',
    'TimeLine',
    'News',
    'Wallet',
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
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items:_bottomNavigationBarItems,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}