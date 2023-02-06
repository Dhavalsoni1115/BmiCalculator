import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const textStyle = TextStyle(
  fontSize: 25,
  color: Colors.white,
);

class CalculateButton extends StatelessWidget {
  String title;
  VoidCallback ontap;
  CalculateButton({
    Key? key,
    required this.title,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        color: Colors.pink,
        margin: EdgeInsets.only(top: 10),
        width: double.infinity,
        height: bottomContainerHeight,
        child: Center(
          child: Text(
            title,
            style: textStyle,
          ),
        ),
      ),
    );
  }
}
