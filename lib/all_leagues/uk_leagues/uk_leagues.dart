import 'package:flutter/material.dart';
import 'package:football/all_leagues/uk_leagues/eng_champ.dart';
import 'package:football/all_leagues/uk_leagues/eng_facup.dart';
import 'package:football/all_leagues/uk_leagues/eng_league.dart';
import 'package:football/all_leagues/uk_leagues/ire_prem.dart';
import 'package:football/drawer/drawer.dart';

class uk_leagues extends StatefulWidget {
  const uk_leagues({Key? key}) : super(key: key);

  @override
  State<uk_leagues> createState() => _uk_leaguesState();
}

class _uk_leaguesState extends State<uk_leagues>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final topTabs = <Tab>[
    Tab(text: "English Premier League"),
    Tab(text: "English FA Cup"),
    Tab(text: "English Championship"),
    Tab(text: "Ireland Premier League"),
  ];
  @override
  void initState() {
    _tabController = TabController(length: 4, initialIndex: 0, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
                icon: Icon(Icons.menu_outlined),
                onPressed: () => Scaffold.of(context).openDrawer()),
          ),
          actions: [
            PopupMenuButton(
                color: Colors.black,
                itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text(
                          "Email Dev",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text(
                          "Rate App",
                          style: TextStyle(color: Colors.white),
                        ),
                        value: 2,
                      ),
                    ]),
          ],
          title: Text("Live Football on TV"),
          backgroundColor: Color(0xFF075e54),
          flexibleSpace: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/blue.jfif'), fit: BoxFit.fill)),
          ),
          bottom: TabBar(
            isScrollable: true,
            indicatorColor: Colors.blue,
            controller: _tabController,
            tabs: topTabs,
          ),
        ),
        body: TabBarView(
          physics: NeverScrollableScrollPhysics(),
          controller: _tabController,
          children: [eng_leag(), eng_facup(), eng_prem(), ire_prem()],
        ),
        drawer: Drawer(child: Drrawer().drawer(context)));
  }
}
