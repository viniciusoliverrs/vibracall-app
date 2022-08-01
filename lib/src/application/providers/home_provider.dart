// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:async';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:vibracall_app/src/application/providers/vibrate_provider.dart';

import '../../ui/theme/app_colors.dart';

class HomeProvider with ChangeNotifier {
  Color backgroundColor = Colors.white;
  Timer? _timer;
  bool isSwitched = false;
  final VibrateProvider vibrateProvider;
  HomeProvider(this.vibrateProvider);

  onChangeBackground() {
    backgroundColor =
        AppColors.colors[math.Random().nextInt(AppColors.colors.length)];
    isSwitched = true;
    notifyListeners();
  }

  toggleVibrate(bool value) {
    if (!value) {
      _turnOffVibrate();
      return;
    }
    _turnOnVibrate();
  }

  _turnOnVibrate() {
    _timer = Timer.periodic(const Duration(milliseconds: 300), (timer) {
      onChangeBackground();
      vibrateProvider.vibrate(500);
    });
  }

  _turnOffVibrate() {
    _timer!.cancel();
    _timer = null;
    isSwitched = false;
    backgroundColor = Colors.white;
    vibrateProvider.cancel();
    notifyListeners();
  }
}
