import 'package:flutter/material.dart';

class chelsea extends StatefulWidget {
  const chelsea({Key? key}) : super(key: key);

  @override
  State<chelsea> createState() => _chelseaState();
}

class _chelseaState extends State<chelsea> {
  List teext = [
    "Arsenal",
    "AFC\nBournemouth",
    "Burnley",
    "Chelsea",
    "Crystal Palace",
    "Everton",
    "Hull City",
    "Leicester City",
    "Liverpool",
    "Manchester",
    "Manchester\nUnited",
    "Middlessbrough",
  ];

  List imagges = [
    AssetImage("assets/shirt1.png"),
    AssetImage("assets/shirt2.png"),
    AssetImage("assets/shirt3.png"),
    AssetImage("assets/shirt3.png"),
    AssetImage("assets/shirt2.png"),
    AssetImage("assets/shirt1.png"),
    AssetImage("assets/shirt2.png"),
    AssetImage("assets/shirt1.png"),
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
