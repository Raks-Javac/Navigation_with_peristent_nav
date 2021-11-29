import 'package:flutter/material.dart';

//this creates a button to be used throughout app
class OptionButton extends StatelessWidget {
  final String? buttonName;
  final VoidCallback onTap;
  const OptionButton({Key? key, this.buttonName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          MaterialButton(
            onPressed: onTap,
            color: Colors.grey,
            child: Text(
              "$buttonName",
            ),
          ),
        ],
      ),
    );
  }
}
