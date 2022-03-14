import 'package:flutter/material.dart';
import 'package:football/news/Lazara.dart';
import 'package:football/news/championship.dart';
import 'package:football/news/chelsea.dart';
import 'package:football/news/premier_league.dart';
import 'package:football/news/united.dart';

class select_team extends StatefulWidget {
  const select_team({Key? key}) : super(key: key);

  @override
  State<select_team> createState() => _select_teamState();
}

class _select_teamState extends State<select_team> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff111111),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back_outlined,
            ),
          ),
          title: Text("Select Team"),
        ),
        body: DefaultTabController(
            length: 5,
            child: Column(
              children: <Widget>[
                Material(
                    child: Container(
                  color: Color(0xff2a2a2a),
                  child: TabBar(
                    indicator: UnderlineTabIndicator(
                      borderSide: BorderSide(width: 10.0, color: Colors.blue),
                    ),
                    isScrollable: true,
                    tabs: [
                      Tab(
                        height: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/logo1.jfif'),
                                    fit: BoxFit.fill),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("PREMIER LEAGUE")
                          ],
                        ),
                      ),
                      Tab(
                        height: 90,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/logo2.png'),
                                    fit: BoxFit.fill),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("CHAMPIONSHIP")
                          ],
                        ),
                      ),
                      Tab(
                        height: 90,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/logo3.jfif'),
                                    fit: BoxFit.fill),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("LAZARA")
                          ],
                        ),
                      ),
                      Tab(
                        height: 90,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/logo1.jfif'),
                                    fit: BoxFit.fill),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("CHELSEA")
                          ],
                        ),
                      ),
                      Tab(
                        height: 90,
                        child: Column(
                          children: [
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('assets/logo2.png'),
                                    fit: BoxFit.fill),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text("UNITED")
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
                Expanded(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      premier_league(),
                      championship(),
                      lazara(),
                      chelsea(),
                      united(),
                    ],
                  ),
                )
              ],
            )) // This trailing comma makes
        );
  }
}
