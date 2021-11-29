import 'package:flutter/material.dart';
import 'package:navigation_samples/src/ui/screens/other_screens/home/home.dart';

class AppRouting {
  toScreen(String screen, BuildContext context) {
    switch (screen) {
      case RouteKeys.home1RouteKey:
        return _navigateFunction(context, RouteKeys.home1RouteKey);
      case RouteKeys.home2RouteKey:
        return _navigateFunction(context, RouteKeys.home2RouteKey);
      case RouteKeys.profile1RouteKey:
        return _navigateFunction(context, RouteKeys.profile1RouteKey);
      case RouteKeys.profile2RouteKey:
        return _navigateFunction(context, RouteKeys.profile2RouteKey);
      default:
        return _navigateFunction(context, RouteKeys.home1RouteKey);
    }
  }

  _navigateFunction(BuildContext context, String screenName) {
    return Navigator.pushNamed(
      context,
      screenName,
    );
  }
}

class RouteKeys {
  //initial Routes
  static const String tabOptionRouteKey = "/tabOptionsHome";
  static const String cupertinoRouteKey = "/cupertinoOption";
  //route keys for home
  static const String home1RouteKey = "/home";
  static const String home2RouteKey = "/home2";
  //route keys for profile
  static const String profile1RouteKey = "/profile";
  static const String profile2RouteKey = "/profile2";
}
