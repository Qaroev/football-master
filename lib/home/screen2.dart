import 'package:flutter/material.dart';
import 'package:football/drawer/drawer.dart';
import 'package:football/home/home.dart';
import 'package:football/home/screen3.dart';
import 'package:football/home/screen4.dart';
import 'package:football/home/screen5.dart';
import 'package:football/home/screen7.dart';
import 'package:football/news/news.dart';

class screen2 extends StatefulWidget {
  @override
  _screen2State createState() => _screen2State();
}

class _screen2State extends State<screen2> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
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
        ),
        body: PageView(
          children: <Widget>[
            HomeScreen(),
            NewsScreen(),
          ],
        ),
        drawer: Drawer(child: Drrawer().drawer(context)));
  }
}
