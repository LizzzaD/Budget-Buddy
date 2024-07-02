import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

enum SvgIcons {
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

  Widget build({Color? color}) {
    return SvgPicture.asset(
      '$_rootPath/$name',
        colorFilter: ColorFilter.mode(color?? Colors.white, BlendMode.srcIn)
    );
  }
}