import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:football/about/about.dart';
import 'package:football/all_leagues/uk_leagues/uk_leagues.dart';
import 'package:football/home/screen2.dart';
import 'package:football/news/select_team.dart';
import 'package:football/settings/seetings.dart';
import 'package:football/widgets/widgets.dart';

class Drrawer {
  Widget drawer(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        height: MediaQuery.of(context).size.height * 1.38,
        color: Color(0xff2a2a2a),
        child: Column(
          children: [
            Container(
              height: 140,
              width: double.infinity,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/blue.jfif'), fit: BoxFit.fill)),
              child: Padding(
                padding: const EdgeInsets.only(top: 35.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (BuildContext context) => screen2())),
                      child: Container(
                        height: 70,
                        width: 70,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/logo.jpg'),
                              fit: BoxFit.fill),
                          color: Colors.blue,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Live Football on TV",
                          style: TextStyle(
                              fontSize: 17,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Row(
                          children: [
                            Text(
                              "Your Gide to Live Football",
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Icon(
                              Icons.arrow_drop_down_outlined,
                              size: 25,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ExpansionTile(
              initiallyExpanded: false,
              tilePadding: EdgeInsets.only(right: -4),
              childrenPadding: EdgeInsets.only(left: 30),
              trailing: SizedBox.shrink(),
              title: strem().league(Icons.sports_soccer_outlined, "All Leagues",
                  Icons.expand_more_outlined, Colors.grey),
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => uk_leagues())),
                  child: strem().league(Icons.circle_outlined, "Daily Listings",
                      null, Colors.red),
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => uk_leagues())),
                  child: InkWell(
                    onTap: () => Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (BuildContext context) => uk_leagues())),
                    child: strem().league(Icons.circle_outlined,
                        "UK & Irish Leagues", null, Colors.yellow),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => uk_leagues())),
                  child: strem().league(Icons.circle_outlined,
                      "European Leagues", null, Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => uk_leagues())),
                  child: strem().league(Icons.circle_outlined, "Asian Leagues",
                      null, Colors.green),
                ),
              ],
            ),
            ExpansionTile(
              initiallyExpanded: false,
              tilePadding: EdgeInsets.only(right: -4),
              childrenPadding: EdgeInsets.only(left: 30),
              trailing: SizedBox.shrink(),
              title: strem().league(Icons.star_border_outlined, "My Leagues",
                  Icons.expand_more_outlined, Colors.grey),
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => uk_leagues())),
                  child: strem().league(Icons.circle_outlined, "Daily Listings",
                      null, Colors.red),
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => uk_leagues())),
                  child: strem().league(Icons.circle_outlined,
                      "UK & Irish Leagues", null, Colors.yellow),
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => uk_leagues())),
                  child: strem().league(Icons.circle_outlined,
                      "European Leagues", null, Colors.white),
                ),
                SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (BuildContext context) => uk_leagues())),
                  child: strem().league(Icons.circle_outlined, "Asian Leagues",
                      null, Colors.green),
                ),
              ],
            ),
            Divider(
              color: Colors.black,
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => select_team()),
                );
              },
              child: strem()
                  .league(Icons.feed_outlined, "News", null, Colors.grey),
            ),
            SizedBox(
              height: 25,
            ),
            strem().league(
                Icons.list_outlined, "League Tables", null, Colors.grey),
            SizedBox(
              height: 25,
            ),
            strem().league(
                Icons.insights_outlined, "Statistics", null, Colors.grey),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => settings()),
                );
              },
              child: strem().league(
                  Icons.settings_outlined, "Settings", null, Colors.grey),
            ),
            SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => about()),
                );
              },
              child: strem().league(
                  Icons.sms_failed_outlined, "About", null, Colors.grey),
            ),
            SizedBox(
              height: 25,
            ),
            strem().league(Icons.shopping_cart_checkout_outlined,
                "Go Pro / Remove Ads", null, Colors.grey),
            SizedBox(
              height: 25,
            ),
            Text(
              "V2.0.7.7",
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
            )
          ],
        ),
      ),
    );
  }
}
