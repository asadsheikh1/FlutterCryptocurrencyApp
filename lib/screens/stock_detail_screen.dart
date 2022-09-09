import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

import 'package:investing_app/providers/stocks.dart';
import 'package:investing_app/constants.dart';

class StockDetailScreen extends StatelessWidget {
  static const routeName = '/stock-detail';
  const StockDetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final stocks = Provider.of<Stocks>(context);
    final id = ModalRoute.of(context)?.settings.arguments as String;
    final selectedstock = stocks.findById(id);

    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: Text(selectedstock.title),
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: greyColor,
              iconSize: defaultIconSize,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notification_add_outlined),
              color: greyColor,
              iconSize: defaultIconSize,
            ),
            Consumer<Stocks>(
              builder: (_, stock, child) => IconButton(
                onPressed: () {
                  stock.toggleWatchlist(id);
                },
                icon: Icon(
                  selectedstock.isWatchlist ? Icons.star : Icons.star_border,
                ),
                color: greyColor,
                iconSize: defaultIconSize,
              ),
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
              Tab(text: 'Overview'),
              Tab(text: 'Components'),
              Tab(text: 'Technical'),
              Tab(text: 'News'),
              Tab(text: 'Analysis'),
              Tab(text: 'Historical Data'),
              Tab(text: 'Comments'),
              Tab(text: 'Chart'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Column(
              children: [
                Container(),
                Row(
                  children: [
                    Text(
                      'Day\'s Range',
                      style: TextStyle(),
                    ),
                    Text(selectedstock.price.toString()),
                  ],
                ),
              ],
            ),
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
