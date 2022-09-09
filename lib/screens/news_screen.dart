import 'package:flutter/material.dart';
import 'package:investing_app/constants.dart';
import 'package:provider/provider.dart';

import 'package:investing_app/providers/stocks.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class NewsScreen extends StatefulWidget {
  static const routeName = '/news';
  const NewsScreen({Key? key}) : super(key: key);

  @override
  State<NewsScreen> createState() => _NewsScreenState();
}

class _NewsScreenState extends State<NewsScreen> {
  var _isInit = true;

  @override
  void didChangeDependencies() {
    if (_isInit) {
      Provider.of<Stocks>(context).fetchStock();
    }
    _isInit = false;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 12,
      child: Scaffold(
        appBar: AppBar(
          title: Text('News'),
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
              icon: const Icon(Icons.edit),
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
              Tab(text: 'Latest'),
              Tab(text: 'Most Popular'),
              Tab(text: 'Commodities'),
              Tab(text: 'Forex'),
              Tab(text: 'Stock Market'),
              Tab(text: 'Enonomic Indicators'),
              Tab(text: 'Economy'),
              Tab(text: 'Cryptocurrency'),
              Tab(text: 'Politics'),
              Tab(text: 'Global'),
              Tab(text: 'Current Affairs'),
              Tab(text: 'Coronavirus'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(),
            Container(),
            Container(),
            Container(),
            Container(),
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
