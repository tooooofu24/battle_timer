import 'package:auto_size_text_field/auto_size_text_field.dart';
import 'package:flutter/material.dart';

class PlayerNameField extends StatefulWidget {
  final String initialValue;
  final void Function(String) onChanged;

  const PlayerNameField({
    required this.initialValue,
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
    _controller = TextEditingController(text: widget.initialValue);
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
      minLines: 1,
      maxLines: 2,
    );
  }
}
