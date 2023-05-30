import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepwagon_rider_app/core/repository/splash_repository/splash_repository.dart';
import 'logic.dart';

final splashLogicProvider =
    StateNotifierProvider<SplashLogic, SplashState>((ref) => SplashLogic(ref));

class SplashLogic extends StateNotifier<SplashState> {
  final StateNotifierProviderRef ref;

  SplashLogic(this.ref) : super(const SplashState());

  splashLogic(BuildContext context) async {
    await Future.delayed(const Duration(seconds: 0));
    state = state.copyWith(status: SplashStatus.loading);
    bool isLoggedIn = await ref.read(splashRepositoryProvider).isLoggedIn();
    state = state.copyWith(status: SplashStatus.completed);
    if (isLoggedIn) {

    } else {

    }
  }
}

