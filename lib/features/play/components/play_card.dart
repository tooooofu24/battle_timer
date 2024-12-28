import 'package:flutter/material.dart';

class PlayCard extends StatelessWidget {
  final String playerName;
  final String time;
  final void Function() onTap;

  const PlayCard({
    required this.playerName,
    required this.time,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: Colors.white,
        elevation: 0.3,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  SizedBox(
                    height: 52,
                    child: FittedBox(
                      fit: BoxFit.scaleDown,
                      child: Text(
                        playerName,
                        textAlign: TextAlign.center,
                        style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              color: Colors.blueGrey,
                              fontWeight: FontWeight.bold,
                            ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          time,
                          style: TextStyle(fontSize: 112),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
