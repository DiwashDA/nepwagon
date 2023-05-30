import 'package:flutter_riverpod/flutter_riverpod.dart';

final appState = StateProvider<AppState>((ref) => AppState.idle);

enum AppState {
  idle,
  loading,
  sucess,
  error,
}
