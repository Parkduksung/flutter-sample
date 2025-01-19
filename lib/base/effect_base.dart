

abstract class BaseEffect {
  const BaseEffect();
}

sealed class CommonEffect extends BaseEffect {
  const CommonEffect();
}

final class ShowToast extends CommonEffect {
  const ShowToast(this.message);
  final String message;
}