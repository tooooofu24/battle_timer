import 'dart:async';

class TimerService {
  Timer? _timer;

  void start(int duration, Function onTick) {
    _timer?.cancel();
    var remaining = duration;

    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (remaining > 0) {
        remaining--;
        onTick(remaining);
      } else {
        timer.cancel();
      }
    });
  }

  void stop() {
    _timer?.cancel();
  }
}
