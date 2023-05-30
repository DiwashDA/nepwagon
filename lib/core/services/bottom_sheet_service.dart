// import 'dart:async';

// import 'package:pod_app/managers/bottomsheet/model.dart';

// class BottomSheetService {
//   late Function(BottomSheetRequest request) _showSheetListener;
//   // late Function() _hideBottomSheet;
//   late Completer<BottomSheetResponse>? _sheetCompleter;

//   static BottomSheetService? instance;

//   factory BottomSheetService() {
//     instance ??= BottomSheetService._internal();
//     return instance!;
//   }

//   BottomSheetService._internal() {}

//   void registerSheetListener(
//     Function(BottomSheetRequest request) showSheetListener,
//     // Function() hideBottomSheet,
//   ) {
//     _showSheetListener = showSheetListener;
//     // _hideBottomSheet = hideBottomSheet;
//   }

//   Future<BottomSheetResponse> showBottomSheet(BottomSheetRequest sheetRequest) {
//     _sheetCompleter = Completer();
//     _showSheetListener(sheetRequest);
//     return _sheetCompleter!.future;
//   }

//   void hideBottomSheet(
//       [BottomSheetResponse? response, bool callHideListener = true]) {
//     print('inside service now');
//     if (_sheetCompleter != null) {
//       _sheetCompleter?.complete(response ?? BottomSheetResponse());
//       // _hideBottomSheet();
//     }
//     _sheetCompleter = null;
//   }
// }
