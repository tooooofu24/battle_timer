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
  /// プレイヤーの回転角度（`AnimatedRotation`の`turns`用の値）
  double get playerTurns {
    switch (this) {
      case Rotation.up:
        return 0.0;
      case Rotation.left:
        return 0.25;
      case Rotation.down:
        return 0.5;
      case Rotation.right:
        return 0.75;
      case Rotation.upDown:
        return 1.0;
      case Rotation.leftRight:
        return 1.25;
      case Rotation.rightLeft:
        return 1.75;
    }
  }

  /// 対戦相手の回転角度（`AnimatedRotation`の`turns`用の値）
  double get opponentTurns {
    switch (this) {
      case Rotation.up:
        return 0.0;
      case Rotation.left:
        return 0.25;
      case Rotation.down:
        return 0.5;
      case Rotation.right:
        return 0.75;
      case Rotation.upDown:
        return 0.5;
      case Rotation.leftRight:
        return 0.75;
      case Rotation.rightLeft:
        return 1.25;
    }
  }

  /// 次の回転方向を取得
  Rotation rotate() {
    final values = Rotation.values;
    final currentIndex = values.indexOf(this);
    final nextIndex = (currentIndex + 1) % values.length;
    return values[nextIndex];
  }
}
