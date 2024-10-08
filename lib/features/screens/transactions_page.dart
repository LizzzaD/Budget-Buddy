import 'package:budget_buddy/views/ui_kit/widgets/daily_transactions_widget.dart';
import 'package:flutter/material.dart';

import '../../views/ui_kit/widgets/balance_card_widget.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.zero,
      children: const [
        Padding(
          padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Row(
            children: [
              Expanded(
                child: BalanceCardWidget(
                  isInitial: true,
                ),
              ),
              SizedBox(width: 8),
              Expanded(
                child: BalanceCardWidget(
                  isInitial: false,
                ),
              ),
            ],
          ),
        ),
        const DailyTransactionsWidget(),
        const DailyTransactionsWidget(),
      ],
    );
  }
}
