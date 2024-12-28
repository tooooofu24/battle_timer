import 'package:flutter/cupertino.dart';

class HourMinutePicker extends StatelessWidget {
  final int count;
  final int defaultValue;
  final void Function(int) onSelected;

  const HourMinutePicker({
    required this.count,
    this.defaultValue = 0,
    required this.onSelected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: CupertinoPicker.builder(
        scrollController:
            FixedExtentScrollController(initialItem: defaultValue),
        childCount: count,
        itemExtent: 40.0,
        onSelectedItemChanged: (itemIndex) => onSelected(itemIndex),
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              index.toString(),
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }
}
