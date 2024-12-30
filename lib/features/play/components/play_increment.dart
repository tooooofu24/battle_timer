import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PlayIncrement extends HookWidget {
  final int increment;
  final Color textColor;
  final bool isPlaying;

  const PlayIncrement({
    super.key,
    required this.increment,
    required this.textColor,
    required this.isPlaying,
  });

  @override
  Widget build(BuildContext context) {
    final controller = useAnimationController(
      duration: const Duration(seconds: 1), // アニメーションの長さ
    );
    final isOpponentTurn = isPlaying && textColor == Colors.blueGrey;

    useEffect(() {
      if (increment == 0) {
        return null;
      }
      if (isOpponentTurn) {
        controller
          ..reset()
          ..forward();
      }
      return null;
    }, [textColor]);

    return Text(
      '+$increment',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
            color: textColor,
          ),
    )
        .animate(controller: controller, autoPlay: false)
        .fadeIn()
        .then(delay: 500.ms)
        .fadeOut();
  }
}
