import 'package:flutter/material.dart';

class TimeAnimatedRotation extends StatelessWidget {
  final double turns;
  final Widget child;

  const TimeAnimatedRotation({
    super.key,
    required this.turns,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedRotation(
      turns: turns,
      duration: Duration(milliseconds: 150),
      child: child,
    );
  }
}
