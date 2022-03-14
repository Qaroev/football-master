import 'package:flutter/material.dart';

class championship extends StatefulWidget {
  const championship({Key? key}) : super(key: key);

  @override
  State<championship> createState() => _championshipState();
}

class _championshipState extends State<championship> {
  List teext = [
    "Crystal Palace",
    "Everton",
    "Hull City",
    "Leicester City",
    "Arsenal",
    "AFC\nBournemouth",
    "Burnley",
    "Chelsea",
    "Liverpool",
    "Manchester",
    "Manchester\nUnited",
    "Middlessbrough",
  ];

  List imagges = [
    AssetImage("assets/shirt2.png"),
    AssetImage("assets/shirt1.png"),
    AssetImage("assets/shirt2.png"),
    AssetImage("assets/shirt1.png"),
    AssetImage("assets/shirt1.png"),
    AssetImage("assets/shirt2.png"),
    AssetImage("assets/shirt3.png"),
    AssetImage("assets/shirt3.png"),
    AssetImage("assets/shirt3.png"),
    AssetImage("assets/shirt1.png"),
    AssetImage("assets/shirt2.png"),
    AssetImage("assets/shirt3.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xff2a2a2a),
        child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
            ),
            itemCount: teext.length,
            itemBuilder: (BuildContext context, int index) {
              return Center(
                  child: Column(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: imagges[index], fit: BoxFit.fill),
                      shape: BoxShape.circle,
                    ),
                  ),
                  Text(
                    teext[index],
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ],
              ));
            }),
      ),
    );
  }
}
