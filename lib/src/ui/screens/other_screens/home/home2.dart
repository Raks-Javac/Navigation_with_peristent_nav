import 'package:flutter/material.dart';
import 'package:navigation_samples/src/core%20/routing/routing.dart';
import 'package:navigation_samples/src/ui/widgets/button.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: OptionButton(
        onTap: () => AppRouting().toScreen(RouteKeys.home2RouteKey, context),
        buttonName: "Home Page 2",
      ),
    );
  }
}
