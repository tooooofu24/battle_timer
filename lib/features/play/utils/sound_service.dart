import 'package:just_audio/just_audio.dart';

class SoundService {
  final AudioPlayer _player = AudioPlayer();

  play({bool loop = false}) async {
    await _player.setAsset('assets/sounds/sound.mp3');
    if (loop) {
      await _player.setLoopMode(LoopMode.all);
    } else {
      await _player.setLoopMode(LoopMode.off);
    }
    await _player.play();
  }

  stop() async {
    await _player.stop();
  }
}
