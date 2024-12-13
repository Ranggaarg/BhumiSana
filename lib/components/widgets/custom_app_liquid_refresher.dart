import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

/*CustomAppLiquidRefresher*/
// ignore: non_constant_identifier_names
Widget CustomAppLiquidRefresher({
  required Widget child,
  required Future<void> Function() onRefresh,
  Color? bgColor,
}) =>
    LiquidPullToRefresh(
      color: bgColor ?? const Color(0xFFFF5D01),
      backgroundColor: Colors.white,
      onRefresh: onRefresh,
      showChildOpacityTransition: false,
      springAnimationDurationInMilliseconds: 200,
      child: child,
    );