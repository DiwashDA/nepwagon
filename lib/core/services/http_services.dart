import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:oktoast/oktoast.dart';

import '../core.dart';

class HttpService {
  Dio dio = Dio(
    BaseOptions(baseUrl: "", headers: {'Authorization': 'Bearer token'}),
  );

  getRequest(String url, {bool showFeedback = true}) async {
    print(url);
    CancelToken _cancelToken = CancelToken();

    try {
      Response response = await dio.get(
        url,
        cancelToken: _cancelToken,
      );

      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        return DataResponse(
            success: true,
            data: response.data,
            statusCode: response.statusCode!);
      }
    } on DioError catch (e) {
      handleCatch(e, showFeedback);
    }
  }

  postRequest(String url,
      {required Map<String, dynamic> dataMap,
      Map<String, dynamic>? header,
      bool showFeedback = true}) async {
    CancelToken _cancelToken = CancelToken();

    try {
      Response response = await dio.post(
        url,
        data: dataMap,
        cancelToken: _cancelToken,
      );

      if (response.statusCode! >= 200 && response.statusCode! <= 299) {
        return DataResponse(
            success: true,
            data: response.data,
            statusCode: response.statusCode!);
      }
    } on DioError catch (e) {
      handleCatch(e, showFeedback);
    }
  }

  patchRequest(String url,
      {required dynamic data, bool showFeedback = true}) async {
    try {
      var res = await dio.patch(
        url,
        data: data,
      );
      if (res.statusCode! >= 200 && res.statusCode! <= 299) {
        return DataResponse(
            data: res.data, success: true, statusCode: res.statusCode!);
      }
    } on DioError catch (e) {
      handleCatch(e, showFeedback);
    }
  }

  putRequest(String url, data, {bool showFeedback = true}) async {
    print(url);
    try {
      var res = await dio.put(
        url,
        data: data,
      );

      if (res.statusCode! >= 200 && res.statusCode! <= 299) {
        return DataResponse(
            data: res.data, success: true, statusCode: res.statusCode!);
      }
    } on DioError catch (e) {
      handleCatch(e, showFeedback);
    }
  }

  Future<DataResponse> handleCatch(DioError error, bool showFeedback) async {
    if (error.response == null) {
      print(error);
      return DataResponse(data: {}, success: false, statusCode: 0);
    }

    if (error.error.toString().contains("ailed host lookup")) {
      if (showFeedback) {}

      return DataResponse(success: false, data: {}, statusCode: 0);
    } else {
      if (error.type == DioErrorType.connectTimeout) {
      } else if (error.response!.statusCode! >= 300 &&
          error.response!.statusCode! <= 399) {
        if (showFeedback) {
          showToast(
            'Something went wrong, please try again',
            backgroundColor: Utilities.black,
            duration: Duration(seconds: 2),
            textStyle: Utilities.heading2.copyWith(color: Colors.white),
            textPadding:
                EdgeInsets.symmetric(horizontal: 100.w, vertical: 20.w),
            position: ToastPosition(align: Alignment.bottomCenter),
          );
        }
      } else if (error.response!.statusCode == 422) {
        if (showFeedback) {
          showToast(
            'Something went wrong, please try again',
            backgroundColor: Utilities.black,
            duration: Duration(seconds: 2),
            textStyle: Utilities.heading2.copyWith(color: Colors.white),
            textPadding:
                EdgeInsets.symmetric(horizontal: 100.w, vertical: 20.w),
            position: ToastPosition(align: Alignment.bottomCenter),
          );
        }
      } else if (error.response!.statusCode! >= 400 &&
          error.response!.statusCode! <= 499) {
        if (showFeedback) {
          showToast(
            'Something went wrong, please try again',
            backgroundColor: Utilities.black,
            duration: Duration(seconds: 2),
            textStyle: Utilities.heading2.copyWith(color: Colors.white),
            textPadding:
                EdgeInsets.symmetric(horizontal: 100.w, vertical: 20.w),
            position: ToastPosition(align: Alignment.bottomCenter),
          );
        }
      } else if (error.response!.statusCode! >= 500 &&
          error.response!.statusCode! <= 599) {
        if (showFeedback) {
          showToast(
            'Something went wrong, please try again',
            backgroundColor: Utilities.black,
            duration: Duration(seconds: 2),
            textStyle: Utilities.heading2.copyWith(color: Colors.white),
            textPadding:
                EdgeInsets.symmetric(horizontal: 100.w, vertical: 20.w),
            position: ToastPosition(align: Alignment.bottomCenter),
          );
        }
      }
    }

    return DataResponse(
      data: error.response?.data ?? {},
      success: false,
      statusCode: error.response?.statusCode! ?? 0,
    );
  }
}

class DataResponse {
  late final Map data;
  late final bool success;
  late final int statusCode;

  DataResponse(
      {required this.data, required this.success, required this.statusCode});

  DataResponse.fromJson(Map<String, dynamic> json) {
    data = json['data'];
    success = json['success'];
    statusCode = json['status_code'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['data'] = data;
    _data['success'] = success;
    _data['status_code'] = statusCode;
    return _data;
  }
}
