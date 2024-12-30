import 'package:battle_timer/features/common/components/time_display.dart';
import 'package:battle_timer/features/common/components/timer_card.dart';
import 'package:flutter/material.dart';

class PlayCard extends StatelessWidget {
  final String playerName;
  final String time;
  final bool isActive;
  final void Function() onTap;

  const PlayCard({
    required this.playerName,
    required this.time,
    required this.isActive,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final textColor = isActive ? Colors.black : Colors.blueGrey;

    return TimerCard(
      onTap: onTap,
      children: [
        SizedBox(
          height: 52,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              playerName,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    color: textColor,
                    fontWeight: FontWeight.bold,
                  ),
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: TimeDisplay(
              time: time,
              textColor: textColor,
            ),
          ),
        ),
      ],
    );
  }
}
