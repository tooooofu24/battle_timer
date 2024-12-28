import 'package:freezed_annotation/freezed_annotation.dart';

part 'play.freezed.dart';

@freezed
class Play with _$Play {
  const factory Play({
    required int playerRemainingSeconds,
    required int opponentRemainingSeconds,
    @Default(false) bool isPlaying,
    @Default(true) bool isPlayerTurn,
  }) = _Play;

  const Play._();

  String get playerTime {
    final hour = playerRemainingSeconds ~/ 3600;
    final minute = (playerRemainingSeconds % 3600) ~/ 60;
    final second = playerRemainingSeconds % 60;
    if (hour == 0 && minute == 0) {
      return second.toString();
    }
    if (hour == 0) {
      return '${minute.toString()}:${second.toString().padLeft(2, '0')}';
    }
    return '${hour.toString()}:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')}';
  }

  String get opponentTime {
    final hour = opponentRemainingSeconds ~/ 3600;
    final minute = (opponentRemainingSeconds % 3600) ~/ 60;
    final second = opponentRemainingSeconds % 60;
    if (hour == 0 && minute == 0) {
      return second.toString();
    }
    if (hour == 0) {
      return '${minute.toString()}:${second.toString().padLeft(2, '0')}';
    }
    return '${hour.toString()}:${minute.toString().padLeft(2, '0')}:${second.toString().padLeft(2, '0')}';
  }
}
