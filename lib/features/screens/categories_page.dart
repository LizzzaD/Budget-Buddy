import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:budget_buddy/views/images/icons.dart';
import 'package:budget_buddy/views/ui_kit/charts/pie_chart.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

import '../../views/ui_kit/widgets/category_widget.dart';
import '../domain/models/category/category.dart';

class CategoriesPage extends StatelessWidget {
  const CategoriesPage({super.key});


  @override
  Widget build(BuildContext context) {

    return Column(

      children: [
        const SizedBox(height: 60,),
        const Center(child: DonutChart()),
        const SizedBox(
          height: 36,
        ),
        Wrap(
          alignment: WrapAlignment.spaceBetween,
          spacing: 40,
          runSpacing: 24,
          children: [
            CategoryWidget(
              category: Category(
                  id: 1,
                  title: 'Продукты',
                  filled: Decimal.parse('300'),
                  planned: Decimal.parse('5000'),
                  color: context.colors.blue,
                  icon: SVGIcon.grocery.build()),
            ),
            CategoryWidget(
              category: Category(
                  id: 1,
                  title: 'Кафе',
                  filled: Decimal.parse('300'),
                  planned: Decimal.parse('5000'),
                  color: context.colors.pink,
                  icon: SVGIcon.grocery.build()),
            ),
            CategoryWidget(
              category: Category(
                  id: 1,
                  title: 'Досуг',
                  filled: Decimal.parse('300'),
                  planned: Decimal.parse('5000'),
                  color: context.colors.orange,
                  icon: SVGIcon.grocery.build()),
            ),
            CategoryWidget(
              category: Category(
                  id: 1,
                  title: 'Транспорт',
                  filled: Decimal.parse('300'),
                  planned: Decimal.parse('5000'),
                  color: context.colors.red,
                  icon: SVGIcon.grocery.build()),
            ),
            CategoryWidget(
              category: Category(
                  id: 1,
                  title: 'Здоровье',
                  filled: Decimal.parse('300'),
                  planned: Decimal.parse('5000'),
                  color: context.colors.lightBlue,
                  icon: SVGIcon.grocery.build()),
            ),
          ],
        ),
      ],
    );
  }
}
