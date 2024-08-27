import 'package:budget_buddy/views/ui_kit/widgets/daily_transactions_widget.dart';
import 'package:flutter/material.dart';

import '../../views/ui_kit/widgets/balance_card_widget.dart';
import '../../views/ui_kit/widgets/transaction_list_tile_widget.dart';

class TransactionsPage extends StatelessWidget {
  const TransactionsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: const [
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: BalanceCardWidget(isInitial: true,),
            ),
            SizedBox(width: 8),
            Expanded(
              child: BalanceCardWidget(isInitial: false,),
            ),
          ],
        ),
        SizedBox(
          height: 40,
        ),
DailyTransactionsWidget(),
        DailyTransactionsWidget(),
      ],
    );
  }
}
