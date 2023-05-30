import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oktoast/oktoast.dart';

import '../../../core/core.dart';
import '../constants/constants.dart';
import 'logic.dart';

final loginLogic =
    StateNotifierProvider<LoginLogic, LoginState>((ref) => LoginLogic(ref));

class LoginLogic extends StateNotifier<LoginState> {
  final StateNotifierProviderRef read;

  LoginLogic(this.read) : super(const LoginState());

  TextEditingController userName = TextEditingController();
  TextEditingController password = TextEditingController();

  FocusNode usernameFocus = FocusNode();
  FocusNode passwordFocus = FocusNode();
  bool obscure = true;
  bool signingIn = false;

  togglePasswordView() {
    state = state.copyWith(obscure: !state.obscure);
  }

  signIn(BuildContext context, userName, password) async {
    state = state.copyWith(status: LoginStatus.loggingIn);

    final response =
        await read.read(userRepositoryProvider).login();
    if (response) {
      state = state.copyWith(status: LoginStatus.idle);
      showToast(LoginConstants.loginSuccessful, position: ToastPosition.bottom);

    } else {
      print("ASdasdaad");
      state = state.copyWith(status: LoginStatus.idle);
    }
  }

  resetPassword() {}
}
