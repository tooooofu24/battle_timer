import 'package:flutter/material.dart';

class TimeDisplay extends StatelessWidget {
  final String time;
  final bool isActive;
  const TimeDisplay({
    super.key,
    required this.time,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        time,
        style: TextStyle(
          fontSize: 100,
          color: isActive ? Colors.black : Colors.blueGrey,
          fontFamily: 'Roboto_Mono',
        ),
      ),
    );
  }
}
