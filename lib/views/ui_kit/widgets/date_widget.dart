import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:flutter/material.dart';

class DateWidget extends StatelessWidget {
  const DateWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios_rounded, color: context.colors.white,),
        ),
        const SizedBox(width: 28,),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 16),
            backgroundColor: context.colors.backgroundColor.withOpacity(0.4),
            foregroundColor: context.colors.white,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(
                width: 4,
              ),
              Text(
                'Сегодня',
                style: context.styles.semibold16,
              ),
              const SizedBox(
                width: 4,
              ),
              const Icon(
                Icons.keyboard_arrow_down_rounded,
                size: 28,
              ),
            ],
          ),
        ),
        const SizedBox(width: 28,),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_forward_ios_rounded, color: context.colors.white,),
        ),
      ],
    );
  }
}
