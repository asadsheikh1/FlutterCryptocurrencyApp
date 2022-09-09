import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:investing_app/providers/stocks.dart';
import 'package:investing_app/screens/tabs_screen.dart';
import 'package:investing_app/screens/markets_screen.dart';
import 'package:investing_app/screens/news_screen.dart';
import 'package:investing_app/screens/search_screen.dart';
import 'package:investing_app/screens/watchlist_screen.dart';
import 'package:investing_app/screens/more_screen.dart';
import 'package:investing_app/screens/stock_detail_screen.dart';
import 'package:investing_app/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => Stocks(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Investing',
        theme: ThemeData(
          scaffoldBackgroundColor: primaryColor,
          primarySwatch: primaryColor,
          textTheme: ThemeData.light().textTheme.copyWith(
                titleMedium: const TextStyle(
                  fontSize: 20,
                  fontFamily: 'Lato',
                  color: Colors.white,
                ),
              ),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const TabsScreen(),
          MarketsScreen.routeName: (context) => const MarketsScreen(),
          NewsScreen.routeName: (context) => const NewsScreen(),
          SearchScreen.routeName: (context) => const SearchScreen(),
          WatchlistScreen.routeName: (context) => const WatchlistScreen(),
          MoreScreen.routeName: (context) => const MoreScreen(),
          StockDetailScreen.routeName: (context) => const StockDetailScreen(),
        },
      ),
    );
  }
}
