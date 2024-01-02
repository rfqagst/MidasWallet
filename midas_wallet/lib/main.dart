import 'package:flutter/material.dart';
import 'package:midas_wallet/coin_balance_detail_screen.dart';
import 'package:midas_wallet/main_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        fontFamily: 'Jakarta',
      ),
      home: MainScreen(),
    );
  }
}
