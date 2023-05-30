import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nepwagon_rider_app/base/router/pod_router.gr.dart';
import 'package:oktoast/oktoast.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final _appRouter = PodRouter();

  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: ScreenUtilInit(
          designSize: const Size(1042, 1366),
          builder: (context, child) {
            return MaterialApp.router(
              title: 'pfa : phase 3',
              routerDelegate: _appRouter.delegate(),
              routeInformationParser: _appRouter.defaultRouteParser(),

              debugShowCheckedModeBanner: false,
              // builder: (context, child) {
              //   return Navigator(
              //     onGenerateRoute: (settings) {
              //       return MaterialPageRoute(
              //         builder: (context) {
              //           return ScreenSaverManager(
              //             router: _appRouter,
              //             child: DialogScreen(
              //               child: child!,
              //             ),
              //           );
              //         },
              //       );
              //     },
              //   );
              // },
            )
            ;
          }),
    );
  }
}
