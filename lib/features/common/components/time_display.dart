import 'package:flutter/material.dart';

class TimeDisplay extends StatelessWidget {
  final String time;
  final Color textColor;
  const TimeDisplay({
    super.key,
    required this.time,
    this.textColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    final defaultStyle = TextStyle(
      fontSize: 100,
      color: textColor,
    );
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: RichText(
        text: TextSpan(
          style: defaultStyle,
          children: time.split('').map((char) {
            // コロンのみ別スタイルを適用
            if (char == ':') {
              return WidgetSpan(
                alignment: PlaceholderAlignment.middle,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16.0, left: 4.0),
                  child: Text(
                    char,
                    style: defaultStyle,
                  ),
                ),
              );
            }
            return TextSpan(
              text: char,
              style: defaultStyle.copyWith(fontFamily: "Roboto_Mono"),
            );
          }).toList(),
        ),
      ),
    );
  }
}
