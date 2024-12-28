import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingBottomSheet extends ConsumerWidget {
  const SettingBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SizedBox(
      height: 300,
      child: Row(
        children: [
          Expanded(
            child: CupertinoPicker(
              itemExtent: 30.0,
              children: [
                "Apple",
                "Banana",
                "StrawBerry",
                "Orange",
                "Watermelon",
              ].map((e) => Text(e)).toList(),
              onSelectedItemChanged: (value) {},
            ),
          ),
          Expanded(
            child: CupertinoPicker(
              itemExtent: 30.0,
              children: [
                "Apple",
                "Banana",
                "StrawBerry",
                "Orange",
                "Watermelon",
              ].map((e) => Text(e)).toList(),
              onSelectedItemChanged: (value) {},
            ),
          ),
        ],
      ),
    );
  }
}
