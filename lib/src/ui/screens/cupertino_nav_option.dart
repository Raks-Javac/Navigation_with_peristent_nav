import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_samples/src/core%20/model/tab_item.dart';
import 'package:navigation_samples/src/core%20/utils/constants.dart';
import 'package:navigation_samples/src/ui/screens/other_screens/home/home.dart';
import 'package:navigation_samples/src/ui/screens/other_screens/profile/profile.dart';

class CupertinoOption extends StatelessWidget {
  const CupertinoOption({Key? key}) : super(key: key);
  static List<TabItem> screens = [
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

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        iconSize: 20,
        items: screens.map((e) => _getTab(e.tabName, e.icon)).toList(),
      ),
      tabBuilder: (BuildContext context, int index) {
        switch (index) {
          case 0:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: Home1());
              },
            );

          case 1:
            return CupertinoTabView(builder: (context) {
              return const Profile1();
            });

          default:
            return CupertinoTabView(
              builder: (context) {
                return const CupertinoPageScaffold(child: Home1());
              },
            );
        }
      },
    );
  }
}
