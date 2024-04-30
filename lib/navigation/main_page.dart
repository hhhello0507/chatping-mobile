import 'package:chatping/matching.dart';
import 'package:flutter/material.dart';

import 'nav_bar.dart';
import 'model/nav_model.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final homeNavKey = GlobalKey<NavigatorState>();
  final searchNavKey = GlobalKey<NavigatorState>();
  final notificationNavKey = GlobalKey<NavigatorState>();
  int selectedTab = 0;
  List<NavModel> items = [];

  @override
  void initState() {
    super.initState();
    items = [
      NavModel(
        page: const MatchingPage(),
        navKey: homeNavKey,
      ),
      NavModel(
        page: Text('hel'),
        navKey: searchNavKey,
      ),
      NavModel(
        page: Text('hel'),
        navKey: notificationNavKey,
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    if (Theme.of(context).brightness == Brightness.light) {

    }
    return WillPopScope(
      onWillPop: () {
        if (items[selectedTab].navKey.currentState?.canPop() ?? false) {
          items[selectedTab].navKey.currentState?.pop();
          return Future.value(false);
        }
        return Future.value(true);
      },
      child: Scaffold(
        body: Stack(children: [
          IndexedStack(
            index: selectedTab,
            children: items
                .map((page) => Navigator(
                      key: page.navKey,
                      onGenerateInitialRoutes: (navigator, initialRoute) {
                        return [
                          MaterialPageRoute(builder: (context) => page.page)
                        ];
                      },
                    ))
                .toList(),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 42),
              child: NavBar(
                pageIndex: selectedTab,
                onTap: (index) {
                  if (index == selectedTab) {
                    items[index]
                        .navKey
                        .currentState
                        ?.popUntil((route) => route.isFirst);
                  } else {
                    setState(() {
                      selectedTab = index;
                    });
                  }
                },
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
