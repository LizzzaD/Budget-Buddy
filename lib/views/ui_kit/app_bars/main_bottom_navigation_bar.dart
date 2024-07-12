import 'dart:async';

import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:flutter/material.dart';

import '../../images/icons.dart';

class MainBottomNavigationBar extends StatelessWidget {
  const MainBottomNavigationBar({
    required this.currentIndex,
    required this.onTap,
    super.key,
  });

  final int currentIndex;
  final FutureOr<void> Function(int index) onTap;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.vertical(
        top: Radius.circular(16),
      ),
      child: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SVGIcon.calculator.build(size: 32),
            label: 'Бюджет',
          ),
          BottomNavigationBarItem(
            icon: SVGIcon.pie_chart.build(size: 32),
            label: 'Категории',
          ),
          BottomNavigationBarItem(
            icon: SVGIcon.receipt.build(size: 32),
            label: 'Операции',
          ),
        ],
        currentIndex: currentIndex,
        backgroundColor: context.colors.secondaryColor,
        unselectedLabelStyle: context.styles.medium12,
        selectedLabelStyle: context.styles.semibold12,
        unselectedItemColor: context.colors.textSecondaryColor,
        selectedItemColor: context.colors.white,
        onTap: onTap,
      ),
    );
  }
}
