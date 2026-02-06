import 'dart:async';

import 'package:flutter/cupertino.dart';

class OtpCodeProvider extends ChangeNotifier {
  OtpCodeProvider() {
    _startTimer();
  }

  final int _totalDuration = 120;
  late int _remainingTime = _totalDuration;

  int get remainingTime => _remainingTime;
  void get resendOtp => _resendOtp();

  void _startTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime <= 0) {
        timer.cancel();
      } else {
        _remainingTime--;
        notifyListeners();
      }
    });
  }

  void _resendOtp() {
    _remainingTime = _totalDuration;
    _startTimer();
    notifyListeners();
  }
}
