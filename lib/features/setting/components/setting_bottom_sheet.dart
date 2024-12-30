import 'package:battle_timer/features/setting/components/time_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SettingBottomSheet extends HookWidget {
  final int defaultHour;
  final int defaultMinute;
  final int defaultSecond;
  final void Function(int, int, int) setTime;
  final void Function(int, int, int) setBothTime;

  const SettingBottomSheet({
    required this.defaultHour,
    required this.defaultMinute,
    required this.defaultSecond,
    required this.setTime,
    required this.setBothTime,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final hour = useState(defaultHour);
    final minute = useState(defaultMinute);
    final second = useState(defaultSecond);

    final controller = useAnimationController();

    bool validate() {
      final isInValid =
          hour.value == 0 && minute.value == 0 && second.value == 0;
      if (isInValid) {
        controller
          ..reset()
          ..forward();
      }
      return !isInValid;
    }

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
            Row(
              children: [
                Expanded(
                  child: TimePicker(
                    count: 24,
                    defaultValue: defaultHour,
                    onSelected: (value) => hour.value = value,
                  ),
                ),
                Expanded(
                  child: TimePicker(
                    count: 60,
                    defaultValue: defaultMinute,
                    onSelected: (value) => minute.value = value,
                  ),
                ),
                Expanded(
                  child: TimePicker(
                    count: 60,
                    defaultValue: defaultSecond,
                    onSelected: (value) => second.value = value,
                  ),
                )
              ],
            )
                .animate(
                  controller: controller,
                  autoPlay: false,
                )
                .shakeX(),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      if (!validate()) return;
                      setTime(hour.value, minute.value, second.value);
                      Navigator.pop(context);
                    },
                    child: Text('設定する'),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () {
                      if (!validate()) return;
                      setBothTime(hour.value, minute.value, second.value);
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
