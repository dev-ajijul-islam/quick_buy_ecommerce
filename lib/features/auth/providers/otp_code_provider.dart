import 'dart:async';

import 'package:flutter/cupertino.dart';

class OtpCodeProvider extends ChangeNotifier {
  final int _totalDuration = 120;
  late int _remainingTime = _totalDuration;

  void get startTimer => _startTimer();
  int get remainingTime => _remainingTime;

  void _startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime <= 0) {
        timer.cancel();
      } else {
        _remainingTime--;
      }
    });
  }
}
