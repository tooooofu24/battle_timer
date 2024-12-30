import 'package:flutter/material.dart';

class TimerCard extends StatelessWidget {
  final List<Widget> children;
  final void Function()? onTap;

  const TimerCard({
    super.key,
    required this.children,
    this.onTap,
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
                children: children,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
