import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_setting.freezed.dart';

@freezed
class PlayerSetting with _$PlayerSetting {
  const PlayerSetting._();

  const factory PlayerSetting({
    required String name,
    @Default(0) int hour,
    @Default(5) int minute,
    @Default(0) int second,
    @Default(5) int increment,
  }) = _PlayerSetting;

  String get displayTime {
    if (hour == 0 && minute == 0) {
      return second.toString();
    }
    if (hour == 0) {
      return '${minute.toString()}:${second.toString().padLeft(2, '0')}';
    }
    return '${hour.toString()}:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')}';
  }

  int get seconds => hour * 3600 + minute * 60 + second;
}
