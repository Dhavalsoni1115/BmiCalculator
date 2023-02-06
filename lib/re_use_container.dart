import 'package:flutter/material.dart';

class ReuseableContainer extends StatelessWidget {
  final Color clr;
  final Widget containerChild;
  final VoidCallback gestureTap;
  const ReuseableContainer(
      {Key? key,
      required this.clr,
      required this.containerChild,
      required this.gestureTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: gestureTap,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(15),
        decoration:
            BoxDecoration(color: clr, borderRadius: BorderRadius.circular(20)),
        child: containerChild,
      ),
    );
  }
}
