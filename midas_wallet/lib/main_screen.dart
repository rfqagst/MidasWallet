import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text("Rifqi's Wallet"), Icon(Icons.notifications)],
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: const Column(
          children: <Widget>[
            Text(
              "Total Balance",
            ),
            Text(
              "3,000 USD",
              style: TextStyle(fontSize: 40.0),
            ),
            Text("24 change +4,3%"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: [Icon(Icons.send), Text("Send")],
                ),
                Column(
                  children: [Icon(Icons.send), Text("Receive")],
                ),
                Column(
                  children: [Icon(Icons.send), Text("Swap")],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Balances"),
                Row(
                  children: [
                    Icon(Icons.search),
                    Icon(Icons.add),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: [
                    Icon(Icons.money),
                    Column(
                      children: <Widget>[Text("Ethereum"), Text("20 Eth")],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "45,349.42",
                    ),
                    Text(
                      "+1,30%",
                    )
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
