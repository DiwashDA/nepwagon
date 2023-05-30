import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets.dart';

class Counter extends ConsumerWidget {
  final void Function(int) increase;
  final void Function(int) decrease;

  Counter(
      {Key? key,
      required this.counter,
      required this.increase,
      required this.decrease,
      required this.index})
      : super(key: key);

  int index;
  int counter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        InkWell(
          onTap: () {
            counter > 1 ? counter-- : null;
            decrease(index);
          },
          child: Widgets.iconDesign("PngAsset.minusIcon"),
        ),
        5.horizontalSpace,
        Text(
          "$counter",
          style: TextStyle(fontSize: 22.sp, fontWeight: FontWeight.w700),
        ),
        5.horizontalSpace,
        InkWell(
          onTap: () {
            counter++;
            increase(index);
          },
          child: Widgets.iconDesign("PngAsset.plusIcon"),
        )
      ],
    );
  }
}
