import 'package:flutter/material.dart';
import 'package:investing_app/constants.dart';

import 'package:investing_app/screens/markets_screen.dart';
import 'package:investing_app/screens/more_screen.dart';
import 'package:investing_app/screens/news_screen.dart';
import 'package:investing_app/screens/search_screen.dart';
import 'package:investing_app/screens/watchlist_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({Key? key}) : super(key: key);

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {
      'page': const MarketsScreen(),
      'title': 'Markets',
    },
    {
      'page': const NewsScreen(),
      'title': 'News',
    },
    {
      'page': const SearchScreen(),
      'title': 'Search',
    },
    {
      'page': const WatchlistScreen(),
      'title': 'Watchlist',
    },
    {
      'page': const MoreScreen(),
      'title': 'More',
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        type: BottomNavigationBarType.fixed,
        backgroundColor: darkGreyColor,
        unselectedItemColor: greyColor,
        selectedItemColor: whiteColor,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph_rounded),
            label: 'Markets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.star),
            label: 'Watchlist',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
