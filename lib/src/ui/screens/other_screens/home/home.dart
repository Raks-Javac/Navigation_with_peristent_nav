import 'package:flutter/material.dart';
import 'package:navigation_samples/src/core%20/routing/routing.dart';
import 'package:navigation_samples/src/ui/screens/other_screens/home/home2.dart';
import 'package:navigation_samples/src/ui/widgets/button.dart';

class Home1 extends StatelessWidget {
  const Home1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OptionButton(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Home2())),
      buttonName: "Home Page 1",
    );
  }
}
