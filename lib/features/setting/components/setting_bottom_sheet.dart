import 'package:battle_timer/features/setting/components/hour_minute_picker.dart';
import 'package:flutter/material.dart';

class SettingBottomSheet extends StatefulWidget {
  final int defaultMinute;
  final int defaultSecond;
  final void Function(int, int) setTime;

  const SettingBottomSheet({
    required this.defaultMinute,
    required this.defaultSecond,
    required this.setTime,
    super.key,
  });

  @override
  State<SettingBottomSheet> createState() => _SettingBottomSheetState();
}

class _SettingBottomSheetState extends State<SettingBottomSheet> {
  late int minute;
  late int second;

  @override
  void initState() {
    super.initState();
    minute = widget.defaultMinute;
    second = widget.defaultSecond;
  }

  @override
  Widget build(BuildContext context) {
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
                    count: 100,
                    defaultValue: widget.defaultMinute,
                    onSelected: (value) => setState(() => minute = value),
                  ),
                ),
                Expanded(
                  child: HourMinutePicker(
                    count: 60,
                    defaultValue: widget.defaultSecond,
                    onSelected: (value) => setState(() => second = value),
                  ),
                )
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: IconButton(
                icon: Icon(
                  Icons.done_rounded,
                  color: Colors.blueGrey,
                  size: 40.0,
                ),
                onPressed: () {
                  widget.setTime(minute, second);
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
