import 'package:flutter/material.dart';
import 'package:football/widgets/widgets.dart';

class screen5 extends StatefulWidget {
  const screen5({Key? key}) : super(key: key);

  @override
  State<screen5> createState() => _screen5State();
}

class _screen5State extends State<screen5> {
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
            strem().Stream("Southampton vs Watford",
                "No TV channels listed for your region"),
            SizedBox(
              height: 3,
            ),
            strem().Alarm("Sat 13 Aug 03:00 p.m."),
            SizedBox(
              height: 14,
            ),
            strem().Stream("MAnchester City vs\nSunderland",
                "BT Sport 1 | BT sport live Streaming"),
            SizedBox(
              height: 3,
            ),
            strem().Alarm("Sat 13 Aug 05:30 p.m."),
            SizedBox(
              height: 6,
            ),
            strem().lisst()
          ],
        ),
      ),
    );
  }
}
