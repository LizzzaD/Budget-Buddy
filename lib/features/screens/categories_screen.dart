import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:budget_buddy/views/images/icons.dart';
import 'package:budget_buddy/views/ui_kit/charts/pie_chart.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

import '../../views/ui_kit/widgets/category_widget.dart';
import '../domain/models/category/category.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});


  @override
  Widget build(BuildContext context) {
    Category category = Category(
        id: 1,
        title: 'Продукты',
        filled: Decimal.parse("1500"),
        planned: Decimal.parse("30000"),
        color: context.colors.blue,
        icon: SVGIcon.grocery.build());
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const DonutChart(),
        const SizedBox(
          height: 36,
        ),
        CategoryWidget(category: category,),
      ],
    );
  }
}
