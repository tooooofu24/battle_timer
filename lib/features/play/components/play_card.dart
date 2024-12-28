import 'package:flutter/material.dart';

class PlayCard extends StatelessWidget {
  final String playerName;
  final String time;

  const PlayCard({
    required this.playerName,
    required this.time,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        color: Colors.white,
        elevation: 0.3,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                Text(
                  playerName,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Expanded(
                  child: Center(
                    child: Text(
                      time,
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
