import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:flutter/material.dart';

import '../../../features/domain/models/category/category.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({required this.category, super.key});

  final Category category;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          category.title,
          style:
              context.styles.semibold12.copyWith(color: context.colors.white),
        ),
        const SizedBox(
          height: 4,
        ),
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: category.color,
          ),
          padding: const EdgeInsets.all(16),
          child: category.icon,
        ),
        const SizedBox(
          height: 4,
        ),
        Text(
          '${category.filled} /${category.planned}',
          style: context.styles.regular10.copyWith(color: context.colors.white),
        )
      ],
    );
  }
}
