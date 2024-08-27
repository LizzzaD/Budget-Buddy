import 'package:budget_buddy/features/screens/categories_page.dart';
import 'package:budget_buddy/features/screens/transactions_page.dart';
import 'package:budget_buddy/views/extension/build_context_extension.dart';
import 'package:budget_buddy/views/images/icons.dart';
import 'package:budget_buddy/views/ui_kit/app_bars/main_bottom_navigation_bar.dart';
import 'package:budget_buddy/views/ui_kit/widgets/date_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 1;

  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontWeight: FontWeight.bold,
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    CategoriesPage(),
    TransactionsPage()
  ];

  void _onItemTapped(int index) {
    _selectedIndex = index;

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            color: context.colors.secondaryColor,
            child: Column(
              children: [
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    const Spacer(),
                    Text(
                      '678 999 ₽',
                      textAlign: TextAlign.center,
                      style: context.styles.semibold16
                          .copyWith(color: context.colors.green),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: () {},
                          icon: SVGIcon.settings.build(),
                        ),
                      ),
                    ),
                  ],
                ),
                const DateWidget(),
              ],
            ),
          ),
          Expanded(child: _widgetOptions.elementAt(_selectedIndex)),
        ],
      ),
      bottomNavigationBar: MainBottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
