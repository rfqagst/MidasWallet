class CryptoData {
  String name;
  String balance;
  String price;
  String balanceChange;
  String priceChange;
  String imageAsset;
  String coinInUsd;
  List<String> transaction;

  CryptoData({
    required this.name,
    required this.balance,
    required this.price,
    required this.balanceChange,
    required this.priceChange,
    required this.imageAsset,
    required this.coinInUsd,
    required this.transaction,
  });
}

var cryptoList = [
  CryptoData(
    name: "Ethereum",
    balance: "2 ETH",
    price: "2,377.86",
    balanceChange: "2.16%",
    priceChange: "4.51%",
    imageAsset: "images/eth.png",
    coinInUsd: "4,755.72",
    transaction: [
      '0.005 ETH',
      '0.002 ETH',
      '0.001 ETH',
    ],
  ),
  CryptoData(
    name: "Bitcoin",
    balance: "0.5 BTC",
    price: "50,000.00",
    balanceChange: "1.25%",
    priceChange: "3.20%",
    imageAsset: "images/btc.png",
    coinInUsd: "25,000.00",
    transaction: [
      '0.01 BTC',
      '0.005 BTC',
      '0.02 BTC',
    ],
  ),
  CryptoData(
    name: "Binance Coin",
    balance: "10 BNB",
    price: "400.00",
    balanceChange: "0.75%",
    priceChange: "2.50%",
    imageAsset: "images/bnb.png",
    coinInUsd: "4,000.00",
    transaction: [
      '1 BNB',
      '0.5 BNB',
      '2 BNB',
    ],
  ),
  CryptoData(
    name: "Dogecoin",
    balance: "100,000 DOGE",
    price: "0.005",
    balanceChange: "3.00%",
    priceChange: "6.00%",
    imageAsset: "images/doge.png",
    coinInUsd: "500.00",
    transaction: [
      '100 DOGE',
      '50 DOGE',
      '200 DOGE',
    ],
  ),
  CryptoData(
    name: "Solana",
    balance: "5 SOL",
    price: "500.00",
    balanceChange: "1.50%",
    priceChange: "3.75%",
    imageAsset: "images/sol.png",
    coinInUsd: "2,500.00",
    transaction: [
      '1 SOL',
      '0.5 SOL',
      '2 SOL',
    ],
  ),
  CryptoData(
    name: "Tron",
    balance: "1,000 TRX",
    price: "0.10",
    balanceChange: "0.50%",
    priceChange: "1.25%",
    imageAsset: "images/tron.png",
    coinInUsd: "100.00",
    transaction: [
      '10 TRX',
      '5 TRX',
      '20 TRX',
    ],
  ),
];
