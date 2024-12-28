import 'dart:async';

class TimerService {
  Timer? _timer;

  void start(int duration, Function onTick) {
    _timer?.cancel();
    var remaining = duration;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      remaining--;
      onTick(remaining);

      if (remaining <= 0) {
        timer.cancel();
      }
    });
  }

  void stop() {
    _timer?.cancel();
  }
}
