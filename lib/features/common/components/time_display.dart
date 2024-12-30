import 'package:flutter/material.dart';

class TimeDisplay extends StatelessWidget {
  final String time;
  final Color textColor;
  const TimeDisplay({
    super.key,
    required this.time,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        time,
        style: TextStyle(
          fontSize: 100,
          color: textColor,
          fontFamily: 'Roboto_Mono',
        ),
      ),
    );
  }
}
