

import 'dart:async';

import 'package:flutter_sample/base/effect_base.dart';

abstract class BaseContract<STATE,EFFECT,EVENT> {
  Stream<STATE> get state;
  Stream<BaseEffect> get effect;
  void event(EVENT event);
}

class StateStream<STATE> {
  final StreamController<STATE> _controller = StreamController<STATE>();
  late STATE _currentState;

  StateStream(STATE initialState){
    _currentState = initialState;
    _controller.add(_currentState);
  }

  STATE get state => _currentState;
  Stream<STATE> get stream => _controller.stream;

  void emit(STATE newState) {
    if(_currentState != newState){
      _currentState = newState;
      _controller.add(newState);
    }
  }

  void dispose() {
    _controller.close();
  }
}

class EffectStream<EFFECT> {
  final StreamController<EFFECT> _controller = StreamController<EFFECT>();
  Stream<EFFECT> get stream => _controller.stream;

  void emit(EFFECT event) {
    _controller.add(event);
  }
  void dispose() {
    _controller.close();
  }
}