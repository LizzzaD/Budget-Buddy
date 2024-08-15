import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:flutter/material.dart';

class TransactionWidget extends StatefulWidget {
  const TransactionWidget({super.key});

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  final FocusNode _focusNode = FocusNode();
  final TextEditingController _moneyController = TextEditingController();

   final TextEditingController _noteController = TextEditingController();

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    _moneyController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          return AnimatedPadding(
            duration: const Duration(milliseconds: 0),
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
     child:  Container(
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(16),
          ),
          color: context.colors.secondaryColor,
        ),
        child: Column(
    mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 60,
              width: double.infinity,
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(16),
                ),
                color: context.colors.blue,
              ),
              child: Text(
                'Продукты',
                style: context.styles.semibold24,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'Расход',
              style:
              context.styles.medium16.copyWith(color: context.colors.blue),
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: 200,
              child: TextField(
                focusNode: _focusNode,
                controller: _moneyController,
                showCursor: false,
                style: context.styles.medium32
                    .copyWith(color: context.colors.blue),
                maxLength: 9,
                textAlign: TextAlign.center,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  counterText: "",
                  suffixText: '₽',
                  hintText: '0',
                  hintStyle: context.styles.medium32
                      .copyWith(color: context.colors.blue),
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                controller: _noteController,
                style: context.styles.medium12
                    .copyWith(color: context.colors.blue),
                textAlign: TextAlign.center,

                decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16)),
                ),),
            ),
            const SizedBox(height: 24,),
          ],
        ),
    ),
      );
    }
    );
  }
}
