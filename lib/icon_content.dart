import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconData genderIcon;
  String genderName;
   IconContent({
    Key? key,
    required this.genderIcon,
    required this.genderName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          color: Colors.white,
          size: 70,
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          genderName,
          style: const TextStyle(color: Colors.white, fontSize: 18),
        ),
      ],
    );
  }
}
