import 'package:flutter/material.dart';
import 'package:football/home/screen2.dart';
import 'package:percent_indicator/percent_indicator.dart';

class screen1 extends StatefulWidget {
  const screen1({Key? key}) : super(key: key);

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (BuildContext) => screen2()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Color.fromARGB(255, 1, 26, 51)),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  height: 180,
                  width: 150,
                  child: Image(image: AssetImage("assets/player.png"))),
              SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (BuildContext) => screen2()));
                },
                child: CircularPercentIndicator(
                  animation: true,
                  animationDuration: 2500,
                  header: Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      "LIVE FOOTBALL ON TV",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  radius: 100.0,
                  lineWidth: 10.0,
                  percent: 1,
                  center: new Text(
                    "100%",
                    style: TextStyle(color: Colors.white),
                  ),
                  progressColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
