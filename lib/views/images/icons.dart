import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum SVGIcon {
  bus,
  calculator,
  fork_knife,
  grocery,
  hand_heart,
  pie_chart,
  puzzle,
  receipt,
  settings,
  wallet;

  static const _rootPath = 'assets/icons';

  Widget build({Color? color, double? size}) {
    return SvgPicture.asset(
      '$_rootPath/$name.svg',
      width: size,
      height: size,
      colorFilter: ColorFilter.mode(
        color ?? Colors.white,
        BlendMode.srcIn,
      ),
    );
  }
}
