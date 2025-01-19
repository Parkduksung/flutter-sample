import 'dart:async';

import 'package:flutter/cupertino.dart';

class DebouncedTextController extends TextEditingController {
  final Duration _duration;
  final ValueChanged<String> _onDebounce;
  Timer? _timer;

  DebouncedTextController({
    required ValueChanged<String> onDebounce,
    Duration duration = const Duration(milliseconds: 1000),
  }) : _onDebounce = onDebounce, _duration = duration{
    addListener(_handleTextChange);
  }

  void _handleTextChange() {
    _cancelTimer();
    _startTimer();
  }

  void _startTimer() {
    _timer = Timer(_duration, () => _onDebounce(text));
  }

  void _cancelTimer() {
    _timer?.cancel();
  }

  @override
  void dispose() {
    _cancelTimer();
    removeListener(_handleTextChange);
    super.dispose();
  }
}