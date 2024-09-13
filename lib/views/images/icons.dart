import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum SVGIcon {
  bus,
  calculator,
  calendar,
  ellipsis,
  filled_ellipsis,
  fork_knife,
  grocery,
  hand_heart,
  infinity,
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
      colorFilter: color != null
          ? ColorFilter.mode(
              color,
              BlendMode.srcIn,
            )
          : null,
    );
  }
}
