import 'package:battle_timer/features/setting/components/time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class IncrementBottomSheet extends HookWidget {
  final int defaultValue;
  final void Function(int) setTime;
  final void Function(int) setBothTime;

  const IncrementBottomSheet({
    super.key,
    required this.defaultValue,
    required this.setTime,
    required this.setBothTime,
  });

  @override
  Widget build(BuildContext context) {
    final increment = useState(defaultValue);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 24,
          bottom: 12,
          right: 16,
          left: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TimePicker(
              count: 60,
              defaultValue: defaultValue,
              onSelected: (value) => increment.value = value,
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setTime(increment.value);
                      Navigator.pop(context);
                    },
                    child: Text('設定する'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      setBothTime(increment.value);
                      Navigator.pop(context);
                    },
                    child: Text('両方に設定する'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
