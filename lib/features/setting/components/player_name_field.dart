import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/material.dart';

class PlayerNameField extends StatefulWidget {
  final String playerName;
  final void Function(String) onChanged;

  const PlayerNameField({
    required this.playerName,
    required this.onChanged,
    super.key,
  });

  @override
  State<PlayerNameField> createState() => _PlayerNameFieldState();
}

class _PlayerNameFieldState extends State<PlayerNameField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.playerName);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AutoSizeTextField(
      controller: _controller,
      onChanged: widget.onChanged,
      style: Theme.of(context).textTheme.headlineMedium,
      textAlign: TextAlign.center,
      maxLines: 1,
    );
  }
}
