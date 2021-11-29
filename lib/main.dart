import 'package:flutter/material.dart';
import 'package:navigation_samples/src/core%20/routing/routing.dart';
import 'package:navigation_samples/src/core%20/theme/theme.dart';
import 'package:navigation_samples/src/core%20/utils/constants.dart';
import 'package:navigation_samples/src/ui/screens/cupertino_nav_option.dart';
import 'package:navigation_samples/src/ui/screens/other_screens/home/home.dart';
import 'package:navigation_samples/src/ui/screens/other_screens/home/home2.dart';
import 'package:navigation_samples/src/ui/screens/other_screens/profile/profile.dart';
import 'package:navigation_samples/src/ui/screens/other_screens/profile/profile2.dart';
import 'package:navigation_samples/src/ui/screens/tab_option_main_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  //kindly change this to false to check the other option
  final bool cupertinoNavType = true;
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Strings.appNameKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeStyler.lightMode,
      initialRoute: cupertinoNavType
          ? RouteKeys.cupertinoRouteKey
          : RouteKeys.tabOptionRouteKey,
      routes: {
        RouteKeys.tabOptionRouteKey: (context) => const TabOptionMainScreen(),
        RouteKeys.cupertinoRouteKey: (context) => const CupertinoOption(),
        RouteKeys.home1RouteKey: (context) => const Home1(),
        RouteKeys.home2RouteKey: (context) => const Home2(),
        RouteKeys.profile1RouteKey: (context) => const Profile1(),
        RouteKeys.profile2RouteKey: (context) => const Profile2(),
      },
    );
  }
}
