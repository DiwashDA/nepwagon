import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:nepwagon_rider_app/features/login/logic/login_logic.dart';

import '../../../core/utilities/utilities.dart';
import '../logic/logic.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  void initState() {
    super.initState();
  }

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final logic = ref.watch(loginLogic.notifier);

    return body(context, logic);
  }

  body(BuildContext context, LoginLogic logic) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Image.asset(
              "PngAsset.logo",
              scale: 0.7,
              color: Colors.white,
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width / 8),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
                  child: Form(
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          "Log In",
                          style: Theme.of(context).textTheme.headline2,
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Widgets.textForm(context, "Username", logic.userName,
                            ref, logic.usernameFocus),
                        const SizedBox(
                          height: 40,
                        ),
                        Widgets.textForm(context, "Password", logic.password,
                            ref, logic.passwordFocus),
                        const SizedBox(
                          height: 50,
                        ),
                        InkWell(
                            onTap: () async {
                              if (formKey.currentState!.validate() &&
                                  !logic.signingIn) {
                                logic.signIn(context, logic.userName.text,
                                    logic.password.text);
                              }
                            },
                            child: AnimatedSwitcher(
                              transitionBuilder:
                                  (Widget child, Animation<double> animation) {
                                return ScaleTransition(
                                    scale: animation, child: child);
                              },
                              duration: const Duration(milliseconds: 500),
                              child: ref.watch(loginLogic).status ==
                                      LoginStatus.loggingIn
                                  ? Column(
                                      children: const [
                                        CircularProgressIndicator(
                                          color: Colors.redAccent,
                                        ),
                                        Text("Signing In")
                                      ],
                                    )
                                  : Container(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 15),
                                      child: Center(
                                          child: Text(
                                        "Sign In",
                                        style: Theme.of(context)
                                            .textTheme
                                            .headline5!,
                                      )),
                                    ),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
