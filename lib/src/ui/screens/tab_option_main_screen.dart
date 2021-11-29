// ignore_for_file: unused_field, unused_element

import 'package:flutter/material.dart';
import 'package:navigation_samples/src/core%20/model/tab_item.dart';
import 'package:navigation_samples/src/core%20/routing/routing.dart';
import 'package:navigation_samples/src/core%20/utils/constants.dart';
import 'package:navigation_samples/src/ui/screens/other_screens/home/home.dart';
import 'package:navigation_samples/src/ui/screens/other_screens/profile/profile.dart';

class TabOptionMainScreen extends StatefulWidget {
  const TabOptionMainScreen({Key? key}) : super(key: key);

  @override
  _TabOptionMainScreenState createState() => _TabOptionMainScreenState();
}

class _TabOptionMainScreenState extends State<TabOptionMainScreen> {
  //this variable is due to change with the screen name specidfied in the list
  String? currentPage = Strings.homeNameKey;

  //current index of the screen in the list
  int _selectedIndex = 0;

//list of page indicators to navigate
  List<String> pageKeys = [Strings.homeNameKey, Strings.profileNameKey];

  //list of tabItem properties to be mapped in the bottomNavItme list
  final List<TabItem> _getTabItem = [
    TabItem(tabName: Strings.homeNameKey, icon: Icons.home),
    TabItem(tabName: Strings.profileNameKey, icon: Icons.person)
  ];

//this the bottom Navigation Items method to be mapped
  static BottomNavigationBarItem _getTab(String? tabText, IconData? icon) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      title: Text(
        "$tabText",
        overflow: TextOverflow.ellipsis,
        style: const TextStyle().copyWith(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  //list of page keys for rendering
  final Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
    Strings.homeNameKey: GlobalKey<NavigatorState>(),
    Strings.profileNameKey: GlobalKey<NavigatorState>(),
  };

  //this changes the state of the current page to the index of pageKeys
  //changes the screen index to the one tapped
  void _selectTab(String tabItem, int index) {
    setState(() {
      currentPage = pageKeys[index];
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //calls the off stage with the name of the tab u are navigating to
          _buildOffStage(Strings.homeNameKey),
          _buildOffStage(Strings.profileNameKey),
        ],
      ),

      //makes the list of tab Items mapped to the bottom Navigation items method
      bottomNavigationBar: BottomNavigationBar(
        items: _getTabItem.map((e) {
          return _getTab(e.tabName, e.icon);
        }).toList(),
        currentIndex: _selectedIndex,
        onTap: (int index) {
          _selectTab(pageKeys[index], index);
        },
        type: BottomNavigationBarType.fixed,
      ),
    );
  }

//this is an offStage
  Widget _buildOffStage(String? tabItem) {
    return Offstage(
      offstage: currentPage != tabItem,
      child:
          TabNavigator(navigatorKey: _navigatorKeys[tabItem], tabItem: tabItem),
    );
  }
}

//this is a stateless widget that takes in your navigator key and tabItem which would be  used to determine the view displayed in the buildOffStage method in the main screen class
class TabNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState>? navigatorKey;
  final String? tabItem;
  const TabNavigator(
      {Key? key, required this.navigatorKey, required this.tabItem})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? child;
    if (tabItem == Strings.homeNameKey) {
      child = const Home1();
    } else if (tabItem == Strings.profileNameKey) {
      child = const Profile1();
    }

    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => child!);
      },
    );
  }
}
