import 'package:flutter/material.dart';
import 'package:midas_wallet/model/crypto_data.dart';

class CoinBalanceDetailScreen extends StatelessWidget {
  final CryptoData crypto;
  const CoinBalanceDetailScreen({Key? key, required this.crypto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(crypto.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [FavCrypto()],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Image.asset(crypto.imageAsset),
            const SizedBox(height: 15),
            Text(
              crypto.balance,
              style:
                  const TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            Text(
              "\$" + crypto.coinInUsd,
              style: const TextStyle(fontSize: 15.0),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Column(
                  children: [
                    CircleAvatar(
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.arrow_upward),
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
                        icon: const Icon(Icons.arrow_downward),
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
                        icon: const Icon(Icons.sync_alt),
                      ),
                    ),
                    Text("Swap")
                  ],
                ),
              ],
            ),
            const SizedBox(height: 50),
            const Text(
              "Transactions",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold, // Align text to the left
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: ListView.builder(
                itemCount: crypto.transaction.length,
                itemBuilder: (context, index) {
                  final String transaction = crypto.transaction[index];
                  return ListTile(
                    leading:
                        const CircleAvatar(child: Icon(Icons.arrow_upward)),
                    title: const Text(
                      "Transfer",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("To : 0x94280283"),
                    trailing: Text(
                      transaction,
                      style: const TextStyle(color: Colors.red),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FavCrypto extends StatefulWidget {
  const FavCrypto({Key? key}) : super(key: key);

  @override
  _FavCryptoState createState() => _FavCryptoState();
}

class _FavCryptoState extends State<FavCrypto> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        setState(() {
          isFav = !isFav;
        });
      },
      icon: Icon(
        isFav ? Icons.star : Icons.star_border,
        size: 35.0,
      ),
      color: Colors.amber,
    );
  }
}
