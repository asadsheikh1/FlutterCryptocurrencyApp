import 'package:flutter/material.dart';
import 'package:investing_app/constants.dart';
import 'package:investing_app/providers/stocks.dart';
import 'package:investing_app/widgets/stock_list_view.dart';
import 'package:provider/provider.dart';

class WatchlistScreen extends StatelessWidget {
  static const routeName = '/watchlist';
  const WatchlistScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stocks = Provider.of<Stocks>(context);
    final watchlistStocks = stocks.watchlistItems;

    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolios'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.edit),
            color: greyColor,
            iconSize: defaultIconSize,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
            color: greyColor,
            iconSize: defaultIconSize,
          ),
        ],
      ),
      body: StockListView(
        stock: watchlistStocks,
      ),
    );
  }
}
