import 'package:flutter/material.dart';
import 'package:wechat_clone/constants.dart';

class NavigationIconView {

  final String _title;
  final IconData _icon;
  final IconData _activeIcon;
  final BottomNavigationBarItem item;

  NavigationIconView({Key key, IconData icon, IconData activeIcon,String title,}) : 
    _title = title,
    _activeIcon = activeIcon,
    _icon = icon,
    item = new BottomNavigationBarItem(
      icon: Icon(icon),
      activeIcon: Icon(activeIcon),
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
          icon: IconData(
            0xe79f,
            fontFamily: Constants.IconFontFamily,
          ),
          activeIcon: IconData(
            0xe62f,
            fontFamily: Constants.IconFontFamily,
          )
        ),
        NavigationIconView(
          title: '微信',
          icon: Icons.ac_unit,
          activeIcon: Icons.access_alarm
        ),
        NavigationIconView(
          title: '微信',
          icon: Icons.ac_unit,
          activeIcon: Icons.access_alarm
        ),
        NavigationIconView(
          title: '微信',
          icon: Icons.ac_unit,
          activeIcon: Icons.access_alarm
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