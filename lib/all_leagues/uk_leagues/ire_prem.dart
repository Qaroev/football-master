import 'package:flutter/material.dart';
import 'package:football/widgets/widgets.dart';

class ire_prem extends StatefulWidget {
  const ire_prem({Key? key}) : super(key: key);

  @override
  State<ire_prem> createState() => _ire_premState();
}

class _ire_premState extends State<ire_prem> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.blueGrey[900],
        child: Column(
          children: [
            SizedBox(
              height: 6,
            ),
            strem().Stream("Hull City vs Lecister City",
                "Sky Sport C1/HD UK| BBC Radio\n5 Live| Sky Go UK"),
            SizedBox(
              height: 3,
            ),
            strem().Alarm("Mon 13 Aug 03:00 p.m."),
            SizedBox(
              height: 14,
            ),
            strem().Stream("Burnley vs Swansea City",
                "Sky Sport C1/HD UK| BBC Radio\n5 Live| Sky Go UK"),
            SizedBox(
              height: 3,
            ),
            strem().Alarm("Sat 13 Aug 03:00 p.m."),
            SizedBox(
              height: 14,
            ),
            strem().Stream("Everton vs Tottenham",
                "Sky Sport C1/HD UK| BBC Radio\n6 Live| Sky Go UK"),
            SizedBox(
              height: 3,
            ),
            strem().Alarm("Fri 13 Aug 03:00 p.m."),
            SizedBox(
              height: 14,
            ),
            strem().Stream("Southampton vs Watford",
                "Sky Sport C1/HD UK| BBC Radio\n7 Live| Sky Go UK"),
            SizedBox(
              height: 3,
            ),
            strem().Alarm("Wed 13 Aug 03:00 p.m."),
            SizedBox(
              height: 14,
            ),
            strem().Stream("Southampton vs Watford",
                "Sky Sport C1/HD UK| BBC Radio\n8 Live| Sky Go UK"),
            SizedBox(
              height: 3,
            ),
            strem().Alarm("Fri 13 Aug 03:00 p.m."),
            SizedBox(
              height: 14,
            ),
          ],
        ),
      ),
    );
  }
}
