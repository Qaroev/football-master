import 'package:flutter/material.dart';
import 'package:football/home/screen3.dart';
import 'package:football/home/screen4.dart';
import 'package:football/home/screen5.dart';
import 'package:football/home/screen7.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final topTabs = <Tab>[

  ];

  @override
  void initState() {
    _tabController = TabController(length: 7, initialIndex: 0, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 7, // length of tabs
        initialIndex: 0,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <Widget>[
          Container(
            child: TabBar(
              labelColor: Colors.green,
              unselectedLabelColor: Colors.black,
              tabs: [
                Tab(text: "Football Today"),
                Tab(text: "Football Tommorow"),
                Tab(text: "Football in 2+ Days"),
                Tab(text: "Football in 3+ Days"),
                Tab(text: "Football in 4+ Days"),
                Tab(text: "Football in 5+ Days"),
                Tab(text: "Football in 6+ Days"),
              ],
            ),
          ),
          Expanded(
            child: Container(
                height: MediaQuery.of(context).size.height-kBottomNavigationBarHeight, //height of TabBarView
                decoration: BoxDecoration(
                    border: Border(top: BorderSide(color: Colors.grey, width: 0.5))
                ),
                child: TabBarView(children: <Widget>[
                  screen3(),
                  screen4(),
                  screen5(),
                  screen3(),
                  screen7(),
                  screen3(),
                  screen4(),
                ])
            ),
          )
        ])
    );
  }
}
