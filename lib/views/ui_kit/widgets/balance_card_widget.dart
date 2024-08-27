import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:flutter/cupertino.dart';

class BalanceCardWidget extends StatelessWidget {
  const BalanceCardWidget({required this.isInitial, super.key});

  final bool isInitial;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        color: context.colors.secondaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Text(
            isInitial ? 'Начальный баланс' : 'Конечный баланс',
            style:
                context.styles.medium12.copyWith(color: context.colors.white),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            '0 ₽',
            style:
                context.styles.medium16.copyWith(color: context.colors.white),
          ),
        ],
      ),
    );
  }
}
