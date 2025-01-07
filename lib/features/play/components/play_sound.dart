import 'package:battle_timer/models/play/play.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class PlaySound extends HookWidget {
  final Play play;

  const PlaySound({
    super.key,
    required this.play,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
