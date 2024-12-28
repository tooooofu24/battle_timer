import 'package:battle_timer/features/setting/setting_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingCard extends ConsumerWidget {
  const SettingCard({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AspectRatio(
      aspectRatio: 1,
      child: Card(
        color: Colors.white,
        elevation: 0.3,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              children: [
                TextField(
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Expanded(
                  child: Center(
                    child: TextButton(
                      onPressed: () => showModalBottomSheet(
                        context: context,
                        builder: (context) => const SettingBottomSheet(),
                      ),
                      child: Text(
                        '10:00',
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
