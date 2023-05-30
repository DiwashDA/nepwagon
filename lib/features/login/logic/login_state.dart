import 'package:flutter/foundation.dart';

enum LoginStatus {
  idle,
  loggingIn,
}

@immutable
class LoginState {
  const LoginState({
    this.status = LoginStatus.idle,
    this.obscure = true,
  });

  LoginState copyWith({
    LoginStatus? status,
    bool? obscure,
    String? errorMessage,
  }) {
    return LoginState(
      status: status ?? this.status,
      obscure: obscure ?? this.obscure,
    );
  }

  // @override
  // bool operator ==(Object other) =>
  //     identical(this, other) ||
  //     other is LoginState &&
  //         runtimeType == other.runtimeType &&
  //         status == other.status &&
  //         obscure == other.obscure;

  final LoginStatus status;
  final bool obscure;
}
