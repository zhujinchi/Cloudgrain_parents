import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:Cloudgrain_parents/screens/screens.dart';

class BottomParentsScreen extends StatefulWidget {
  @override
  _BottomParentsScreenState createState() => _BottomParentsScreenState();
}

class _BottomParentsScreenState extends State<BottomParentsScreen> {
  int _currentTabIndex = 0;

  var tabImages;

  var tabBarTitles = ['陪伴', '云课', '点读', '我的'];

  Image getTabImage(path) {
    return new Image.asset(path, width: 28.0, height: 28.0);
  }

  Image getTabIcon(int tagIndex) {
    if (tagIndex == _currentTabIndex) {
      return tabImages[tagIndex][1];
    }
    return tabImages[tagIndex][0];
  }

  Text getTabTitle(int tagIndex) {
    if (tagIndex == _currentTabIndex) {
      return new Text(tabBarTitles[tagIndex],
          style: new TextStyle(color: const Color.fromRGBO(59, 61, 79, 1)));
    } else {
      return new Text(tabBarTitles[tagIndex],
          style: new TextStyle(color: const Color.fromRGBO(164, 173, 200, 1)));
    }
  }

  @override
  Widget build(BuildContext context) {
    final _tabPages = <Widget>[
      HomeScreen(),
      CloudClassScreen(),
      ReadScreen(),
      ProfileScreen(),
    ];

    tabImages = [
      [
        getTabImage('assets/icons/icon_a_default@3x.png'),
        getTabImage('assets/icons/icon_a_pre@3x.png')
      ],
      [
        getTabImage('assets/icons/icon_b_default@3x.png'),
        getTabImage('assets/icons/icon_b_pre@3x.png')
      ],
      [
        getTabImage('assets/icons/icon_c_default@3x.png'),
        getTabImage('assets/icons/icon_c_pre@3x.png')
      ],
      [
        getTabImage('assets/icons/icon_d_default@3x.png'),
        getTabImage('assets/icons/icon_d_pre@3x.png')
      ]
    ];

    final _BottomNavBarItems = <BottomNavigationBarItem>[
      BottomNavigationBarItem(icon: getTabIcon(0), title: getTabTitle(0)),
      BottomNavigationBarItem(icon: getTabIcon(1), title: getTabTitle(1)),
      BottomNavigationBarItem(icon: getTabIcon(2), title: getTabTitle(2)),
      BottomNavigationBarItem(icon: getTabIcon(3), title: getTabTitle(3)),
    ];
    //assert(_tabPages.length == _BottomNavBarItems.length);
    final bottomNavBar = BottomNavigationBar(
      items: _BottomNavBarItems,
      currentIndex: _currentTabIndex,
      type: BottomNavigationBarType.fixed,
      onTap: (int index) {
        setState(() {
          _currentTabIndex = index;
        });
      },
    );
    return Scaffold(
      body: _tabPages[_currentTabIndex],
      bottomNavigationBar: bottomNavBar,
    );
  }
}
