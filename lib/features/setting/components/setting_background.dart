import 'package:flutter/material.dart';

class SettingBackground extends StatelessWidget {
  const SettingBackground({super.key});

  @override
  Widget build(BuildContext context) {
    final angle = 0.75;
    final ratio = 2.25;
    return ClipRect(
      child: OverflowBox(
        maxWidth: MediaQuery.of(context).size.width * ratio,
        maxHeight: MediaQuery.of(context).size.height * ratio,
        child: Transform.rotate(
          angle: angle,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 6, // 1行に表示するアイコンの数
              mainAxisSpacing: 5,
              crossAxisSpacing: 5,
            ),
            itemBuilder: (context, index) {
              return Transform.rotate(
                angle: -angle,
                child: Icon(
                  Icons.settings_rounded,
                  color: Colors.blueGrey.withValues(alpha: 0.15),
                  size: 130,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
