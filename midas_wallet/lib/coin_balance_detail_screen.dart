import 'package:flutter/material.dart';

class CoinBalanceDetailScreen extends StatelessWidget {
  const CoinBalanceDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Image.asset('images/btc.png'),  
          const Text("20 ETH"),
          const Text("3,000 Usd"),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [Icon(Icons.money), Text("Send")],
              ),
              Column(
                children: [Icon(Icons.money), Text("Receive")],
              ),
              Column(
                children: [Icon(Icons.money), Text("Swap")],
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Image.asset('images/btc.png'),
              const Column(
                children: <Widget>[
                  Text("Transfer"),
                  Text("To : 0xC86938323....232"),
                ],
              ),
              const Text("-0.013345 ETH")
            ],
          )
        ],
      )),
    );
  }
}
