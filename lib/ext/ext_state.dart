import 'package:flutter/cupertino.dart';
import 'package:flutter_sample/base/effect_base.dart';

extension EffectStreamSubscription on State {
  void collectEffect<T extends BaseEffect>(Stream<T> effect, void Function(T effect) onEffect) {
    Future.microtask(() {
      effect.listen((effect) {
        if (mounted) {
          WidgetsBinding.instance.addPostFrameCallback((_) {
            if (mounted) {
              onEffect(effect);
            }
          });
        }
      });
    });
  }
}
