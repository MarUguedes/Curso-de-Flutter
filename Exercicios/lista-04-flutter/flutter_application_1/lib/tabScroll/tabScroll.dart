import 'package:flutter/material.dart';

class TabScroll extends StatelessWidget {
  const TabScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Tab Scroll",
        home: DefaultTabController(
          length: 9,
          child: Scaffold(
            appBar: AppBar(
                title: Center(child: Text('Scroll Bar')),
                bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Tab 1'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Tab 2'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Tab 3'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Tab 4'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Tab 5'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Tab 6'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Tab 7'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Tab 8'),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Tab 9'),
                ),
              ],
            )),
            body: Tab(),
          ),
        ));
  }
}

class Tab extends StatelessWidget {
  const Tab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TabBarView(
      children: [
        bannerTab(1),
        bannerTab(2),
        bannerTab(3),
        bannerTab(4),
        bannerTab(5),
        bannerTab(6),
        bannerTab(7),
        bannerTab(8),
        bannerTab(9),
        
      ],
    );
  }
}

bannerTab(int numero) {
  return Center(child: Text('Tab $numero'));
}
