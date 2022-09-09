import 'package:flutter/material.dart';

import 'package:investing_app/providers/stock.dart';
import 'package:investing_app/screens/markets_screen.dart';

class StockListView extends StatelessWidget {
  final List<Stock> stock;

  const StockListView({
    Key? key,
    required this.stock,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const ClampingScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CustomListTile(
          id: stock[index].id,
          title: stock[index].title,
          subtitle: stock[index].description,
          price: stock[index].price,
          percentage: stock[index].percentage,
        );
      },
      itemCount: stock.length,
    );
  }
}
