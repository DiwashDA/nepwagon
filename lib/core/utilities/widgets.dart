import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../features/login/logic/login_logic.dart';
import 'themes.dart';

class Widgets {
  static Widget iconDataHolder(icon, data) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        children: [
          iconDesign(icon),
          const SizedBox(
            width: 15,
          ),
          Expanded(child: Text(data))
        ],
      ),
    );
  }

  static iconDesign(icon) {
    return Container(
        height: 45.h,
        width: 45.h,
        decoration: Themes.iconHolderDecoration(),
        child: Image.asset(
          icon,
          color: Themes.iconColor,
        ));
  }

  static tabBar(List<Tab> tabs) {
    return TabBar(
        indicatorColor: Colors.transparent,
        unselectedLabelColor: Colors.black,
        labelStyle: Themes.heading2.apply(),
        tabs: tabs);
  }

  static textForm(BuildContext context, String label,
      TextEditingController controller, WidgetRef ref, FocusNode node) {
    return  TextFormField(
        controller: controller,
        cursorColor: Themes.grey,
        focusNode: node,
        style: Theme.of(context).textTheme.headline3,
        obscureText:
            label.contains('password') ? ref.watch(loginLogic).obscure : false,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a valid $label';
          }
          return null;
        },
        decoration: InputDecoration(
            focusedErrorBorder: InputBorder.none,
            suffixIcon: label == 'Password'
                ? InkWell(
                    onTap: () {
                      ref.watch(loginLogic.notifier).togglePasswordView();
                    },
                    child: Icon(
                      Icons.remove_red_eye,
                      color: ref.watch(loginLogic).obscure
                          ? Themes.iconColor
                          : Colors.green,
                    ))
                : null,
            enabledBorder: InputBorder.none,
            hintText: label,
            focusedBorder: InputBorder.none),
    );
  }
}
