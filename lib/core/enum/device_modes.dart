import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final modeProvider = Provider<CurrentDeviceMode>((ref) => CurrentDeviceMode());

enum DeviceModes {
  debug,
  neutral,
  billing,
  cashier,
  entrance,
  customer,
  provision,
  none,
}

class CurrentDeviceMode extends ChangeNotifier {
  DeviceModes _currentMode = DeviceModes.customer;

  DeviceModes get currentMode => _currentMode;

  set currentMode(DeviceModes value) {
    _currentMode = value;
    notifyListeners();

  }
}
