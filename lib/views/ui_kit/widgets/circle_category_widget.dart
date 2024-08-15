import 'package:budget_buddy/features/domain/models/category/category.dart';
import 'package:flutter/material.dart';

class CircleCategoryWidget extends StatelessWidget {
  const CircleCategoryWidget({required this.category, super.key});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52,
      width: 52,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: category.color,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: category.icon,
      ),
    );
  }
}
