import 'package:battle_timer/features/setting/setting_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SettingScreen extends ConsumerWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: Color(0xFFF8FAFC),
        body: SafeArea(
          child: Center(
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SettingCard(),
                    SizedBox(
                      height: 72,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          IconButton(
                            icon: Icon(
                              Icons.done_rounded,
                              color: Colors.blueGrey,
                              size: 40.0,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.autorenew_rounded,
                              color: Colors.blueGrey,
                              size: 40.0,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    SettingCard(),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
