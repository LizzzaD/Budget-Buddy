import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:budget_buddy/views/images/icons.dart';
import 'package:flutter/material.dart';

class TimePeriodSelectionWidget extends StatelessWidget {
  const TimePeriodSelectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colors.secondaryColor,
        borderRadius: const BorderRadius.vertical(
          top: Radius.circular(16),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Период',
            style:
                context.styles.semibold16.copyWith(color: context.colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          _TimePeriodWidget(
            icon: Container(
              height: 28,
              width: 28,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: context.colors.white)),
              child: SVGIcon.ellipsis.build(),
            ),
            title: 'Выбрать период',
            topBorderRadius: 16,
            bottomBorderRadius: 8,
            description: '16 - 24 Сентября',
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Expanded(
                child: _TimePeriodWidget(
                  icon: SVGIcon.infinity.build(size: 28),
                  title: 'Всё время',
                  topBorderRadius: 8,
                  bottomBorderRadius: 8,
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                child: _TimePeriodWidget(
                  icon: SVGIcon.calendar.build(size: 28),
                  title: 'Выбрать день',
                  topBorderRadius: 8,
                  bottomBorderRadius: 8,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 4,
          ),
          Row(
            children: [
              Expanded(
                child: _TimePeriodWidget(
                  icon: Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: context.colors.white)),
                    child: Text(
                      '7',
                      style: context.styles.semibold16.copyWith(
                        color: context.colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  title: 'Неделя',
                  topBorderRadius: 8,
                  bottomBorderRadius: 8,
                  description: '2 - 8 Сентября',
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                child: _TimePeriodWidget(
                  icon:  Container(
                    height: 28,
                    width: 28,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: context.colors.white)),
                    child: Text(
                      '1',
                      style: context.styles.semibold16.copyWith(
                        color: context.colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  title: 'Сегодня',
                  topBorderRadius: 8,
                  bottomBorderRadius: 8,
                  description: '5 Сентября',
                ),
              ),
            ],
          ),
          const SizedBox(height: 4,),
          Row(
            children: [
              Expanded(
                child: _TimePeriodWidget(
                  icon: Container(
                    height: 28,

                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: context.colors.white)),
                    child: Text(
                      '365',
                      style: context.styles.semibold16.copyWith(
                        color: context.colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  title: 'Год',
                  topBorderRadius: 8,
                  bottomBorderRadius: 16,
                  description: '2024 год',
                ),
              ),
              const SizedBox(
                width: 4,
              ),
              Expanded(
                child: _TimePeriodWidget(
                  icon:  Container(
                    height: 28,
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: context.colors.white)),
                    child: Text(
                      '30',
                      style: context.styles.semibold16.copyWith(
                        color: context.colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  title: 'Месяц',
                  topBorderRadius: 8,
                  bottomBorderRadius: 16,
                  description: 'Сентябрь 2024',
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
        ],

      ),
    );
  }
}

class _TimePeriodWidget extends StatelessWidget {
  const _TimePeriodWidget({
    required this.icon,
    required this.title,
    required this.topBorderRadius,
    required this.bottomBorderRadius,
    this.description,
    super.key,
  });

  final Widget icon;
  final String title;
  final double topBorderRadius;
  final double bottomBorderRadius;
  final String? description;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colors.white.withOpacity(0.2),
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(topBorderRadius),
          bottom: Radius.circular(bottomBorderRadius),
        ),
      ),
      child: Column(
        children: [
          Column(
            children: [
              icon,
              const SizedBox(
                height: 4,
              ),
              Text(
                title,
                style: context.styles.medium12
                    .copyWith(color: context.colors.white),
              ),
              const SizedBox(
                height: 4,
              ),
              description != null
                  ? Text(
                      description!,
                      style: context.styles.medium12
                          .copyWith(color: context.colors.textSecondaryColor),
                    )
                  : const SizedBox(),
            ],
          ),
        ],
      ),
    );
  }
}
