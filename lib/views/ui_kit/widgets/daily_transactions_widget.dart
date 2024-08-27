import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:budget_buddy/views/ui_kit/widgets/transaction_list_tile_widget.dart';
import 'package:flutter/material.dart';

class DailyTransactionsWidget extends StatelessWidget {
  const DailyTransactionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
          child: Row(
            children: [
              Text(
                '24',
                style: context.styles.medium24,
              ),
              const SizedBox(
                width: 4,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Четверг', style: context.styles.light10,),
                  Text(
                    'июня 2024',
                    style: context.styles.medium10,
                  ),
                ],
              ),
              const Spacer(),
              Text(
                '44 000 ₽',
                style: context.styles.semibold16
                    .copyWith(color: context.colors.green,),
              ),
            ],
          ),
        ),
        Container(
          width: double.infinity,
          height: 1,
          color: context.colors.white.withOpacity(0.4),
        ),
        const TransactionListTileWidget(),
        const TransactionListTileWidget(),
        const TransactionListTileWidget(),
      ],
    );
  }
}
