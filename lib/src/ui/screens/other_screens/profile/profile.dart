import 'package:flutter/material.dart';
import 'package:navigation_samples/src/core%20/routing/routing.dart';
import 'package:navigation_samples/src/ui/screens/other_screens/profile/profile2.dart';
import 'package:navigation_samples/src/ui/widgets/button.dart';

class Profile1 extends StatelessWidget {
  const Profile1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OptionButton(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (context) => const Profile2())),
      buttonName: "Profile Page 1",
    );
  }
}
