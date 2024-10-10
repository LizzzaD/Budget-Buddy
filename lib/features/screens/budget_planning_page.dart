import 'package:budget_buddy/features/domain/models/category/category.dart';
import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:budget_buddy/views/images/icons.dart';
import 'package:budget_buddy/views/ui_kit/widgets/category_widget.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';

class BudgetPlanningPage extends StatelessWidget {
  const BudgetPlanningPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          _BudgetProgressBar(
            color: context.colors.purple,
            title: 'Расходы',
            plannedAmount: Decimal.parse('90000'),
            filledAmount: Decimal.parse('30000'),
            fullnessName: 'потрачено',
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 20,
              runSpacing: 20,
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
          ),
          _BudgetProgressBar(
            color: context.colors.green,
            title: 'Доходы',
            plannedAmount: Decimal.parse('90000'),
            filledAmount: Decimal.parse('50000'),
            fullnessName: 'получено',
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              spacing: 20,
              runSpacing: 20,
              children: [
                CategoryWidget(
                  category: Category(
                      id: 1,
                      title: 'Зарплата',
                      filled: Decimal.parse('3000'),
                      planned: Decimal.parse('50000'),
                      color: context.colors.green,
                      icon: SVGIcon.grocery.build()),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _BudgetProgressBar extends StatelessWidget {
  const _BudgetProgressBar(
      {required this.color,
      required this.title,
      required this.plannedAmount,
      required this.filledAmount,
      required this.fullnessName,
      super.key});

  final Color color;
  final String title;
  final Decimal plannedAmount;
  final Decimal filledAmount;
  final String fullnessName;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LinearProgressIndicator(
          value: filledAmount.toDouble() / plannedAmount.toDouble(),
          minHeight: 60,
          color: color,
          backgroundColor: color.withOpacity(0.4),
          borderRadius:
              const BorderRadius.horizontal(right: Radius.circular(10)),
        ),
        SizedBox(
          height: 60,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: context.styles.medium16
                          .copyWith(color: context.colors.white),
                    ),
                    Text(
                      '$fullnessName: $filledAmount ₽',
                      style: context.styles.regular12
                          .copyWith(color: context.colors.white),
                    ),
                  ],
                ),
                const Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '0 ₽',
                      style: context.styles.semibold16
                          .copyWith(color: context.colors.white),
                    ),
                    Text(
                      '$fullnessName: $plannedAmount ₽',
                      style: context.styles.regular12
                          .copyWith(color: context.colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
