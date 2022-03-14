import 'package:flutter/material.dart';

class strem {
  Widget Stream(txt1, txt2) {
    return Padding(
      padding: const EdgeInsets.only(left: 5.0, right: 5),
      child: Container(
        width: double.infinity,
        height: 100,
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/logo1.jfif'), fit: BoxFit.fill),
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    txt1,
                    style: TextStyle(fontSize: 22, color: Colors.white),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    txt2,
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Alarm(alrmtxt) {
    return Padding(
      padding: const EdgeInsets.only(left: 7.0, right: 7),
      child: Container(
        color: Color.fromARGB(68, 158, 158, 158),
        height: 50,
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(
                    Icons.alarm,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    alrmtxt,
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )
                ],
              ),
              PopupMenuButton(
                  icon: Icon(
                    Icons.more_horiz_outlined,
                    color: Colors.white,
                  ),
                  color: Colors.blueGrey[900],
                  itemBuilder: (context) => [
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(
                                Icons.alarm_outlined,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Remainder",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          value: 1,
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(
                                Icons.calendar_month_outlined,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Calender",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          value: 2,
                        ),
                        PopupMenuItem(
                          child: Row(
                            children: [
                              Icon(
                                Icons.share_outlined,
                                color: Colors.grey,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "Share",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                          value: 3,
                        ),
                      ]),
            ],
          ),
        ),
      ),
    );
  }

  Widget lisst() {
    return Container(
      color: Color.fromARGB(255, 63, 63, 63),
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "International - Olympic Soccer - Men",
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 189, 187, 187)),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Divider(color: Color.fromARGB(255, 189, 187, 187)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "International - Club Friendly",
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 189, 187, 187)),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Divider(color: Color.fromARGB(255, 189, 187, 187)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "International - International Champion Cup",
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 189, 187, 187)),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Divider(color: Color.fromARGB(255, 189, 187, 187)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "France - Ligue 1",
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 189, 187, 187)),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Divider(color: Color.fromARGB(255, 189, 187, 187)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "Portugal - Premia Laga",
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 189, 187, 187)),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Divider(color: Color.fromARGB(255, 189, 187, 187)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "England Champion Ship",
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 189, 187, 187)),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Divider(color: Color.fromARGB(255, 189, 187, 187)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "International - CAF Confedration",
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 189, 187, 187)),
            ),
          ),
          SizedBox(
            height: 2,
          ),
          Divider(color: Color.fromARGB(255, 189, 187, 187)),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              "International - Olympic Soccer - Men",
              style: TextStyle(
                  fontSize: 17, color: Color.fromARGB(255, 189, 187, 187)),
            ),
          ),
        ],
      ),
    );
  }

  Widget league(icn, txxt, icn2, clr) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Row(
              children: [
                Icon(icn, color: clr),
                SizedBox(
                  width: 30,
                ),
                Text(
                  txxt,
                  style: TextStyle(fontSize: 16, color: Colors.grey),
                )
              ],
            ),
          ),
          Icon(icn2, color: Colors.black),
        ],
      ),
    );
  }

  Widget settings(con, txxxt, txt3) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          Icon(
            con,
            color: Color.fromARGB(237, 158, 158, 158),
            size: 40,
          ),
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                txxxt,
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                txt3,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              )
            ],
          )
        ],
      ),
    );
  }
}
