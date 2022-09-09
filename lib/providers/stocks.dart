import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:investing_app/providers/stock.dart';

class Stocks with ChangeNotifier {
  final List<Stock> _items = [
    Stock(
      id: '1',
      title: 'FTSE 100',
      description: '24/08 | London',
      price: 7471.51,
      percentage: '-16.60 (-0.22%)',
      type: 'Indicies',
    ),
    Stock(
      id: '2',
      title: 'FTSE 250',
      description: '24/08 | London',
      price: 1471.51,
      percentage: '6.60 (0.43%)',
      type: 'Indicies',
    ),
    Stock(
      id: '3',
      title: 'DAX',
      description: '24/08 | London',
      price: 7471.51,
      percentage: '-2.60 (-0.02%)',
      type: 'Indicies Future',
    ),
    Stock(
      id: '4',
      title: 'BTC',
      description: '24/08 | London',
      price: 7471.51,
      percentage: '-2.60 (-0.02%)',
      type: 'Cryptocurrency',
    ),
    Stock(
      id: '5',
      title: 'ETH',
      description: '24/08 | France',
      price: 1871.51,
      percentage: '-2.60 (-0.02%)',
      type: 'Cryptocurrency',
    ),
    Stock(
      id: '6',
      title: 'ADA',
      description: '24/08 | China',
      price: 21471.51,
      percentage: '-2.60 (-0.02%)',
      type: 'Cryptocurrency',
    ),
    Stock(
      id: '7',
      title: 'USD',
      description: '24/08 | China',
      price: 21471.51,
      percentage: '-2. (-0.02%)',
      type: 'Currencies',
    ),
  ];

  List<Stock> get items {
    return [..._items];
  }

  List<Stock> get watchlistItems {
    return _items.where((stock) => stock.isWatchlist).toList();
  }

  List<Stock> get indicies {
    return _items.where((stock) => stock.type == 'Indicies').toList();
  }

  List<Stock> get indiciesFuture {
    return _items.where((stock) => stock.type == 'Indicies Future').toList();
  }

  List<Stock> get share {
    return _items.where((stock) => stock.type == 'Share').toList();
  }

  List<Stock> get commodities {
    return _items.where((stock) => stock.type == 'Commodities').toList();
  }

  List<Stock> get currencies {
    return _items.where((stock) => stock.type == 'Currencies').toList();
  }

  List<Stock> get cryptocurrency {
    return _items.where((stock) => stock.type == 'Cryptocurrency').toList();
  }

  List<Stock> get bonds {
    return _items.where((stock) => stock.type == 'Bonds').toList();
  }

  List<Stock> get etfS {
    return _items.where((stock) => stock.type == 'ETFs').toList();
  }

  List<Stock> get dunds {
    return _items.where((stock) => stock.type == 'Dunds').toList();
  }

  List<Stock> get popular {
    return _items.where((stock) => stock.type == 'Popular').toList();
  }

  Stock findById(String id) {
    return items.firstWhere((stock) => stock.id == id);
  }

  Future<void> toggleWatchlist(String id) async {
    final item = findById(id);
    if (_items.contains(item)) {
      _items.remove(item);
      _items.add(item.copyWith(isWatchlist: !item.isWatchlist));
    }

    notifyListeners();
  }

  Future<void> fetchStock() async {
    var url = Uri.parse(
        'https://github.com/pyinvest/python_finance_tutorial/blob/master/stock_price/file.csv');
    try {
      final response = await http.get(url);
      final extractedData = jsonDecode(response.body) as Map<String, dynamic>;

      notifyListeners();
    } catch (error) {
      rethrow;
    }
  }
}
