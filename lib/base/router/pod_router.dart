import 'package:nepwagon_rider_app/features/login/view/login_view.dart';
import 'package:auto_route/auto_route.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'View,ViewRoute',
  routes: <AutoRoute>[
    CustomRoute(
        page: LoginScreen,
        transitionsBuilder: TransitionsBuilders.slideBottom,
        durationInMilliseconds: 250,
        reverseDurationInMilliseconds: 250,
        initial: true),

  ],
)
class $PodRouter {}
