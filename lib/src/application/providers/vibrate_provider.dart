import 'package:vibration/vibration.dart';

class VibrateProvider {
  VibrateProvider();

  void vibrate(int duration) => Vibration.vibrate(duration: duration);

  void vibratePattern(List<int> pattern) => Vibration.vibrate(pattern: pattern);

  void cancel() => Vibration.cancel();
}
