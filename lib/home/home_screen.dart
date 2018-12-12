import 'package:flutter/material.dart';

class NavigationIconView {

  final String _title;
  final Widget _icon;
  final Widget _activeIcon;
  final BottomNavigationBarItem item;

  NavigationIconView({Key key, Widget icon, Widget activeIcon,String title,}) : 
    _title = title,
    _activeIcon = activeIcon,
    _icon = icon,
    item = new BottomNavigationBarItem(
      icon: icon,
      activeIcon: activeIcon,
      title: Text(title)
    );
}

class HomeScreen extends StatefulWidget {
  
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int _currentIndex = 0;

  List<NavigationIconView> _navigationViews;

  @override
    void initState() {
      super.initState();

      _navigationViews = [
        NavigationIconView(
          title: '微信',
          icon: Icon(Icons.ac_unit),
          activeIcon: Icon(Icons.access_alarm)
        ),
        NavigationIconView(
          title: '微信',
          icon: Icon(Icons.ac_unit),
          activeIcon: Icon(Icons.access_alarm)
        ),
        NavigationIconView(
          title: '微信',
          icon: Icon(Icons.ac_unit),
          activeIcon: Icon(Icons.access_alarm)
        ),
        NavigationIconView(
          title: '微信',
          icon: Icon(Icons.ac_unit),
          activeIcon: Icon(Icons.access_alarm)
        ),
      ];
    }

  @override
    Widget build(BuildContext context) {

      final BottomNavigationBar botNavBar = BottomNavigationBar(
        items: _navigationViews.map((NavigationIconView view) {
          return view.item;
        }).toList(),
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      );
        
      return Scaffold(
        appBar: AppBar(
          title: Text('微信'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){
                print('点击了搜索按钮');
              },
            ),
            IconButton(
              icon: Icon(Icons.add),
              onPressed: (){ print('显示下拉列表'); },
            )
          ],
        ),
        body: Container(
          color: Colors.red,
        ),
        bottomNavigationBar: botNavBar,
      );
  }
}