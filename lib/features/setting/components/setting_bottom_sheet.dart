import 'package:battle_timer/features/common/components/timer_icon_button.dart';
import 'package:battle_timer/features/setting/components/hour_minute_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class SettingBottomSheet extends HookWidget {
  final int defaultHour;
  final int defaultMinute;
  final int defaultSecond;
  final void Function(int, int, int) setTime;

  const SettingBottomSheet({
    required this.defaultHour,
    required this.defaultMinute,
    required this.defaultSecond,
    required this.setTime,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final hour = useState(defaultHour);
    final minute = useState(defaultMinute);
    final second = useState(defaultSecond);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 24,
          right: 16,
          left: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Expanded(
                  child: HourMinutePicker(
                    count: 24,
                    defaultValue: defaultHour,
                    onSelected: (value) => hour.value = value,
                  ),
                ),
                Expanded(
                  child: HourMinutePicker(
                    count: 60,
                    defaultValue: defaultMinute,
                    onSelected: (value) => minute.value = value,
                  ),
                ),
                Expanded(
                  child: HourMinutePicker(
                    count: 60,
                    defaultValue: defaultSecond,
                    onSelected: (value) => second.value = value,
                  ),
                )
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: TimerIconButton(
                icon: Icons.done_rounded,
                onPressed: () {
                  setTime(hour.value, minute.value, second.value);
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
