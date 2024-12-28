import 'package:freezed_annotation/freezed_annotation.dart';

part 'play.freezed.dart';

@freezed
class Play with _$Play {
  const factory Play({
    required int playerSeconds,
    required int opponentSeconds,
    @Default(false) bool isPlaying,
    @Default(true) bool isPlayerTurn,
  }) = _Play;

  const Play._();

  String get playerTime {
    final hour = playerSeconds ~/ 3600;
    final minute = (playerSeconds % 3600) ~/ 60;
    final second = playerSeconds % 60;
    if (hour == 0 && minute == 0) {
      return second.toString();
    }
    if (hour == 0) {
      return '${minute.toString()}:${second.toString().padLeft(2, '0')}';
    }
    return '${hour.toString()}:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')}';
  }

  String get opponentTime {
    final hour = opponentSeconds ~/ 3600;
    final minute = (opponentSeconds % 3600) ~/ 60;
    final second = opponentSeconds % 60;
    if (hour == 0 && minute == 0) {
      return second.toString();
    }
    if (hour == 0) {
      return '${minute.toString()}:${second.toString().padLeft(2, '0')}';
    }
    return '${hour.toString()}:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')}';
  }
}
