import 'package:flutter/material.dart';
import 'package:navigation_samples/src/core%20/routing/routing.dart';
import 'package:navigation_samples/src/ui/screens/other_screens/profile/profile.dart';
import 'package:navigation_samples/src/ui/widgets/button.dart';

class Profile2 extends StatelessWidget {
  const Profile2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
      ),
      body: OptionButton(
        onTap: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => const Profile1())),
        buttonName: "Profile Page 2",
      ),
    );
  }
}
