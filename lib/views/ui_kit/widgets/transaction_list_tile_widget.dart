import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:budget_buddy/views/ui_kit/widgets/circle_category_widget.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

import '../../../features/domain/models/category/category.dart';
import '../../images/icons.dart';

class TransactionListTileWidget extends StatelessWidget {
  const TransactionListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Category exampleCategory = Category(
      id: 2,
      title: 'Досуг',
      filled: Decimal.parse("1500"),
      planned: Decimal.parse("30000"),
      color: context.colors.blue,
      icon: SVGIcon.grocery.build(),
    );
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8,),
      decoration: BoxDecoration(
        color: context.colors.secondaryColor,
        border: Border(
          bottom: BorderSide(
            color: context.colors.white.withOpacity(0.3),
          ),
        ),
      ),
      child: Row(
        children: [
          CircleCategoryWidget(category: exampleCategory),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exampleCategory.title,
                style: context.styles.semibold16
                    .copyWith(color: context.colors.white),
              ),
              Text(
                'Театр',
                style: context.styles.regular12.copyWith(
                  color: context.colors.white.withOpacity(0.3),
                ),
              ),
            ],
          ),
          Spacer(),
          Text(
            '- 2 000 ₽',
            style: context.styles.semibold16.copyWith(color: context.colors.red),
          ),
        ],
      ),
    );
  }
}
