// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:midas_wallet/coin_balance_detail_screen.dart';
import 'package:midas_wallet/model/crypto_data.dart';

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
                    Row(
                      children: [
                        Text(
                          "Rifqi's Wallet",
                          style: TextStyle(fontFamily: 'Jakarta'),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.keyboard_arrow_down))
                      ],
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
                        "\$3,000 USD",
                        style: TextStyle(
                            fontSize: 40.0,
                            fontFamily: 'Jakarta',
                            fontWeight: FontWeight.w800),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "24 change ",
                            style: TextStyle(fontSize: 17.0),
                          ),
                          Text(
                            "+2,04%",
                            style:
                                TextStyle(fontSize: 17.0, color: Colors.green),
                          ),
                        ],
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
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_upward),
                            ),
                          ),
                          Text("Send")
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.arrow_downward),
                            ),
                          ),
                          Text("Receive")
                        ],
                      ),
                      Column(
                        children: [
                          CircleAvatar(
                            child: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.sync_alt),
                            ),
                          ),
                          Text("Swap")
                        ],
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
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      final CryptoData crypto = cryptoList[index];
                      return InkWell(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return CoinBalanceDetailScreen(
                              crypto: crypto,
                            );
                          }));
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 15.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: [
                                  Image.asset(
                                    crypto.imageAsset,
                                    width: 40.0,
                                    height: 40.0,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          crypto.name,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18.0),
                                        ),
                                        Text(
                                          crypto.balance,
                                          style: TextStyle(fontSize: 15.0),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: <Widget>[
                                  Text(crypto.price,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18.0)),
                                  Text(
                                    crypto.priceChange,
                                    style: TextStyle(
                                        color: Colors.green, fontSize: 15.0),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: cryptoList.length,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
