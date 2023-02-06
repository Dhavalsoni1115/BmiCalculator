import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FloatingactionButton extends StatelessWidget {
  final String title;
  int weight = 0;
  VoidCallback onPress1;
    VoidCallback onPress2;

  FloatingactionButton({
    Key? key,
    required this.title,
    required this.weight,
    required this.onPress1,
    required this.onPress2,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          title,
          style: const TextStyle(color: Colors.white, fontSize: 20),
        ),
        Text(
          weight.toString(),
          style: const TextStyle(color: Colors.white, fontSize: 30),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            clickButton(
                onPress: onPress1, heroTag: 1, icon: FontAwesomeIcons.minus),
            clickButton(
                onPress: onPress2, heroTag: 2, icon: FontAwesomeIcons.plus),
          ],
        ),
      ],
    );
  }

  Widget clickButton(
      {required VoidCallback onPress,
      required int heroTag,
      required IconData icon}) {
    return FloatingActionButton(
      onPressed: onPress,
      heroTag: heroTag,
      child: Icon(icon),
      backgroundColor: Colors.pink,
    );
  }
}
