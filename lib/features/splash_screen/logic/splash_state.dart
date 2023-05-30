import 'package:flutter/foundation.dart';

enum SplashStatus {
  idle,
  loading,
  completed,
}

@immutable
class SplashState {
  const SplashState({
    this.status = SplashStatus.loading,
  });
  final SplashStatus status;

  SplashState copyWith({SplashStatus? status}) {
    return SplashState(
      status: status ?? this.status,
    );
  }
}
