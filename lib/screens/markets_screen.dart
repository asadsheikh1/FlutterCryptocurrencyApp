import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import 'package:investing_app/providers/stocks.dart';
import 'package:investing_app/screens/stock_detail_screen.dart';
import 'package:investing_app/widgets/stock_list_view.dart';
import 'package:investing_app/constants.dart';

class MarketsScreen extends StatelessWidget {
  static const routeName = '/markets';
  const MarketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stocks = [
      'Indicies',
      'Indicies Future',
      'Share',
      'Commodities',
      'Currencies',
      'Cryptocurrency',
      'Bonds',
      'ETFs',
      'Dunds',
      'Popular',
    ];

    final stockIndicies = Provider.of<Stocks>(context).indicies;
    final stockIndiciesFuture = Provider.of<Stocks>(context).indiciesFuture;
    final stockShare = Provider.of<Stocks>(context).share;
    final stockCommodities = Provider.of<Stocks>(context).commodities;
    final stockCurrencies = Provider.of<Stocks>(context).currencies;
    final stockCryptocurrency = Provider.of<Stocks>(context).cryptocurrency;
    final stockBonds = Provider.of<Stocks>(context).bonds;
    final stockETFs = Provider.of<Stocks>(context).etfS;
    final stockDunds = Provider.of<Stocks>(context).dunds;
    final stockPopular = Provider.of<Stocks>(context).popular;

    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          title: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              'assets/images/logo.png',
              height: 100,
              width: 160,
            ),
          ),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: greyColor,
              iconSize: defaultIconSize,
            ),
          ],
          bottom: TabBar(
            indicator: DotIndicator(
              color: whiteColor,
              distanceFromCenter: 16,
              radius: 3,
              paintingStyle: PaintingStyle.fill,
            ),
            indicatorColor: whiteColor,
            unselectedLabelColor: greyColor,
            isScrollable: true,
            physics: const ClampingScrollPhysics(),
            tabs: [
              ...stocks.map((stock) => Tab(text: stock)).toList(),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            StockListView(stock: stockIndicies),
            StockListView(stock: stockIndiciesFuture),
            StockListView(stock: stockShare),
            StockListView(stock: stockCommodities),
            StockListView(stock: stockCurrencies),
            StockListView(stock: stockCryptocurrency),
            StockListView(stock: stockBonds),
            StockListView(stock: stockETFs),
            StockListView(stock: stockDunds),
            StockListView(stock: stockPopular),
          ],
        ),
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  final String id;
  final String title;
  final String subtitle;
  final double price;
  final String percentage;

  const CustomListTile({
    Key? key,
    required this.id,
    required this.title,
    required this.subtitle,
    required this.price,
    required this.percentage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        Navigator.of(context).pushNamed(
          StockDetailScreen.routeName,
          arguments: id,
        );
      },
      tileColor: lightGreyColor,
      title: Text(title),
      subtitle: Row(
        children: [
          Icon(Icons.watch_later_outlined, size: 20, color: greyColor),
          const SizedBox(width: 4),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Lato',
              color: greyColor,
            ),
          ),
        ],
      ),
      trailing: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            price.toString(),
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            percentage,
            style: TextStyle(
              fontSize: 14,
              fontFamily: 'Lato',
              color: greenColor,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
