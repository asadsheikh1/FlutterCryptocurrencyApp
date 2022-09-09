import 'package:flutter/material.dart';
import 'package:investing_app/constants.dart';

class MoreScreen extends StatelessWidget {
  static const routeName = '/more';
  const MoreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(
          padding: const EdgeInsets.all(10),
          child: CircleAvatar(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/images/profile.jpg'),
            ),
          ),
        ),
        title: Text('Asad Sheikh'),
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () {},
            icon: CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Icon(Icons.flag),
              ),
            ),
            color: greyColor,
            iconSize: defaultIconSize,
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings),
            color: greyColor,
            iconSize: defaultIconSize,
          ),
        ],
      ),
      body: SingleChildScrollView(
        physics: const ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.notifications, color: greyColor),
                title: Text('Alerts'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.bookmark, color: greyColor),
                title: Text('Saved Items'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.sentiment_neutral, color: greyColor),
                title: Text('My Sentiments'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.ads_click, color: greyColor),
                title: Text('Ad-Free Version'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.push_pin, color: greyColor),
                title: Text('Push Notification Settings'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: greyColor.withOpacity(0.2)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Text(
                'Live Markets',
                style: TextStyle(color: greyColor),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.currency_bitcoin, color: greyColor),
                title: Text('Cryptocurrency'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.calendar_month_sharp, color: greyColor),
                title: Text('Calendars'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.auto_graph, color: greyColor),
                title: Text('Trending Stocks'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.auto_graph, color: greyColor),
                title: Text('Pre Market'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.analytics, color: greyColor),
                title: Text('Analysis & Opinion'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: greyColor.withOpacity(0.2)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Text(
                'Tools',
                style: TextStyle(color: greyColor),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.library_books_outlined, color: amberColor),
                title: Text(
                  'Top Brokers',
                  style: TextStyle(color: amberColor),
                ),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.fit_screen_outlined, color: greyColor),
                title: Text('Stock Screener'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.calculate, color: greyColor),
                title: Text('Currency Converter'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.monitor, color: greyColor),
                title: Text('Webinars'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.percent, color: greyColor),
                title: Text('Fed Rate Monitor'),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 1,
              child: DecoratedBox(
                decoration: BoxDecoration(color: greyColor.withOpacity(0.2)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Text(
                'More',
                style: TextStyle(color: greyColor),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.fiber_new_rounded, color: greyColor),
                title: Text('What\'s New'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.help, color: greyColor),
                title: Text('Help Center'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.feedback, color: greyColor),
                title: Text('Send Feedback'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.settings, color: greyColor),
                title: Text('Settings'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.share, color: greyColor),
                title: Text('Invite Friends'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.shield, color: greyColor),
                title: Text('Legal'),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                leading: Icon(Icons.logout, color: greyColor),
                title: Text('Sign Out'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
