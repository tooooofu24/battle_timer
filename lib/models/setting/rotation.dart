enum Rotation {
  up,
  left,
  down,
  right,
  upDown,
  leftRight,
  rightLeft,
}

extension RotationExtension on Rotation {
  int get playerQuarterTurns {
    switch (this) {
      case Rotation.up:
        return 0;
      case Rotation.left:
        return 1;
      case Rotation.down:
        return 2;
      case Rotation.right:
        return 3;
      case Rotation.upDown:
        return 0;
      case Rotation.leftRight:
        return 1;
      case Rotation.rightLeft:
        return 3;
    }
  }

  int get opponentQuarterTurns {
    switch (this) {
      case Rotation.up:
        return 0;
      case Rotation.left:
        return 1;
      case Rotation.down:
        return 2;
      case Rotation.right:
        return 3;
      case Rotation.upDown:
        return 2;
      case Rotation.leftRight:
        return 3;
      case Rotation.rightLeft:
        return 1;
    }
  }

  Rotation rotate() {
    final values = Rotation.values;
    final currentIndex = values.indexOf(this);
    final nextIndex = (currentIndex + 1) % values.length;
    return values[nextIndex];
  }
}
