import 'package:flutter/material.dart';
import 'package:pc_application/Const/color.dart';

import 'package:pc_application/Presentation/Stock/stock_window.dart';
import 'package:pc_application/Presentation/Widgets/Drawer/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: kWhite,
        backgroundColor: kDarkGreen,
        surfaceTintColor: kDarkGreen,
        // centerTitle: true,
        title: const Text(
          'Shop Name',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: kWhite,
          ),
        ),
      ),
      drawer: const Drawer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [DrawerWidgets(), Text('version: 1.0.0')],
        ),
      ),
      body: const StocksManagementWindow(),
    );
  }
}
