// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Rifqi's Wallet",
                      style: TextStyle(fontFamily: 'Jakarta'),
                    ),
                    Icon(Icons.notifications)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20.0),
                  child: Column(
                    children: [
                      Text(
                        "Total Balance",
                        style: TextStyle(fontSize: 17.0),
                      ),
                      Text(
                        "3,000 USD",
                        style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Jakarta',
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "24 change +4,3%",
                        style: TextStyle(fontSize: 17.0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, bottom: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Column(
                        children: [Icon(Icons.arrow_upward), Text("Send")],
                      ),
                      Column(
                        children: [Icon(Icons.arrow_downward), Text("Receive")],
                      ),
                      Column(
                        children: [Icon(Icons.sync_alt), Text("Swap")],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 20.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Balances",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17.0)),
                      Row(
                        children: [
                          Icon(Icons.search),
                          Icon(Icons.add),
                        ],
                      ),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Row(
                      children: [
                        Image.asset(
                          'images/eth.png',
                          width: 40.0,
                          height: 40.0,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Ethereum",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "20 Eth",
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("45,349.42",
                            style: TextStyle(fontWeight: FontWeight.bold)),
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
        ),
      ),
    );
  }
}
