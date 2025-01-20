import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_sample/base/contract_base.dart';
import 'package:flutter_sample/base/effect_base.dart';

abstract class BaseViewModel<STATE, EFFECT, EVENT> extends ChangeNotifier implements BaseContract<STATE, EFFECT, EVENT> {

  late final StateStream<STATE> _stateStream;
  @override
  Stream<STATE> get state => _stateStream.stream;

  late final EffectStream<BaseEffect> _effectStream;
  @override
  Stream<BaseEffect> get effect => _effectStream.stream;

  STATE get initialState;

  BaseViewModel() {
    _stateStream = StateStream<STATE>(initialState);
    _effectStream = EffectStream<BaseEffect>();
  }

  @protected
  void updateState(STATE newState) {
    _stateStream.emit(newState);
    notifyListeners();
  }

  @protected
  void sendEffect(BaseEffect effect) {
    _effectStream.emit(effect);
  }

  @override
  void dispose() {
    _stateStream.dispose();
    _effectStream.dispose();
    super.dispose();
  }
}