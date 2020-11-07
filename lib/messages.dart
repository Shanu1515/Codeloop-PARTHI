import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:parthi/SelfAssesmentrep.dart';

class Message extends StatefulWidget {
  @override
  _MessageState createState() => _MessageState();
}

class _MessageState extends State<Message> {
  int a = 0, a1 = 0, b, b1, k, k1, m, m1, o, o1, r, r1; //this is for step1;
  int f1 = 1,
      f2,
      f3,
      f4,
      f5,
      f6,
      f7,
      f8,
      f9,
      f10,
      f11,
      f12,
      f13,
      f14,
      f15,
      f16,
      f17,
      f18,
      f19,
      f20,
      f21,
      f22,
      f23,
      f24,
      f25;
  int g = 1,
      c = 1,
      l = 1,
      s = 1,
      p = 1,
      t = 1,
      g1 = 1,
      c1 = 1,
      l1 = 1,
      s1 = 1,
      p1 = 1,
      t1 = 1,
      h1 = 1;
  //for yes or no
  List<String> step1 = [
    "Are the breasts of usual size?",
    "Are the Shape of breasts same as usual?",
    "Did you feel any dimpling,puckering or bulging of the skin?",
    "Did your nipple change position or an inverted nipple(Pushed inward instead of sticking out) is observed?",
    "Did you observe any sort of redness ,soreness,rash or swelling?",
    "Is there any kind of fluid coming out of the nipples?"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFC0CB),
        appBar: AppBar(
          automaticallyImplyLeading: true,
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 0,
          title: Center(
            child: Text(
              "ADIRA",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 20,
                  fontSize: 25,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 40, 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFFC0CB),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Container(
                        child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Text(
                        "Stand In Front of the mirror in a well illuminated room,and follow these steps to know about your health",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFFC0CB),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Container(
                        child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            child: Text(
                              "Step 1:\nBegin By looking at your breasts in the mirror with your shoulders straight and your arms on your hips.",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 15),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/1.jpg",
                                height: 150,
                                fit: BoxFit.cover,
                                filterQuality: FilterQuality.low,
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "(For Educational Purpose)",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    )),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFFC0CB),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: Center(
                    child: Container(
                        child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Text(
                        step1[a],
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      ),
                    )),
                  ),
                ),
              ),
              if (f1 == 1)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f1 = 0;
                              f2 = 0;
                              b = a + 1;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f1 = 0;
                              f2 = 0;
                              b = a + 1;
                              g = 0;
                            });
                          }),
                    ],
                  ),
                ),
              if (f1 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.3),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                        child: Center(
                          child: Container(
                            child: g == 1
                                ? Text(
                                    "Yes",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  )
                                : Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f1 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          step1[b],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )),
                    ),
                  ),
                ),
              if (f2 == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f2 = 1;
                              f3 = 0;
                              f4 = 0;
                              k = b + 1;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f2 = 1;
                              f3 = 0;
                              f4 = 0;
                              k = b + 1;
                              c = 0;
                            });
                          }),
                    ],
                  ),
                ),
              if (f3 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Center(
                          child: Container(
                            child: c == 1
                                ? Text(
                                    "Yes",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  )
                                : Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f3 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          step1[k],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )),
                    ),
                  ),
                ),
              if (f4 == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f4 = 1;
                              f5 = 0;
                              f6 = 0;
                              m = k + 1;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f4 = 1;
                              f5 = 0;
                              f6 = 0;
                              m = k + 1;
                              l = 0;
                            });
                          }),
                    ],
                  ),
                ),
              if (f5 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.3),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Container(
                          child: l == 1
                              ? Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "NOTE: Contact the doctor immediately.",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f5 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          step1[m],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )),
                    ),
                  ),
                ),
              if (f6 == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f6 = 1;
                              f7 = 0;
                              f8 = 0;
                              o = m + 1;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f6 = 1; //button hataney key liye
                              f7 = 0; //next question dikhaney key liye
                              f8 = 0; //button dikhaney key liye
                              o = m + 1;
                              s = 0;
                            });
                          }),
                    ],
                  ),
                ),
              if (f7 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.3),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Container(
                          child: s == 1
                              ? Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "NOTE: Contact the doctor immediately.",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f7 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          step1[o],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )),
                    ),
                  ),
                ),
              if (f8 == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f8 = 1;
                              f9 = 0;
                              f10 = 0;
                              r = o + 1;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f8 = 1;
                              f9 = 0;
                              f10 = 0;
                              r = o + 1;
                              p = 0;
                            });
                          }),
                    ],
                  ),
                ),
              if (f9 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.3),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Container(
                          child: p == 1
                              ? Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "NOTE: Need attention, check regularly.",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f9 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          step1[r],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )),
                    ),
                  ),
                ),
              if (f10 == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f11 = 0;
                              f12 = 0;
                              f10 = 1;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f11 = 0;
                              f12 = 0;
                              f10 = 1;
                              t = 0;
                            });
                          }),
                    ],
                  ),
                ),
              if (f11 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.3),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Container(
                          child: t == 1
                              ? Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f11 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "Step 2:\nNow,Raise your arm and look for some minor details.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Column(
                              children: [
                                Image.asset(
                                  "assets/2.jpg",
                                  height: 200,
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.low,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "(For Education Purpose)",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
              if (f11 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                            child: Text(
                          step1[a1],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                      ),
                    ),
                  ),
                ),
              if (f12 == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f12 = 1;
                              f13 = 0;
                              f14 = 0;
                              b1 = a1 + 1;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f12 = 1; //button hataney key liye
                              f13 = 0; //next question dikhaney key liye
                              f14 = 0; //button dikhaney key liye
                              b1 = a1 + 1;
                              g1 = 0;
                            });
                          }),
                    ],
                  ),
                ),
              if (f13 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.3),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Container(
                          child: g1 == 1
                              ? Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f13 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          step1[b1],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )),
                    ),
                  ),
                ),
              if (f14 == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f14 = 1;
                              f15 = 0;
                              f16 = 0;
                              k1 = b1 + 1;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f14 = 1; //button hataney key liye
                              f15 = 0; //next question dikhaney key liye
                              f16 = 0; //button dikhaney key liye
                              k1 = b1 + 1;
                              c1 = 0;
                            });
                          }),
                    ],
                  ),
                ),
              if (f15 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.3),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Container(
                          child: c1 == 1
                              ? Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f15 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          step1[k1],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )),
                    ),
                  ),
                ),
              if (f16 == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f16 = 1;
                              f17 = 0;
                              f18 = 0;
                              m1 = k1 + 1;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f16 = 1; //button hataney key liye
                              f17 = 0; //next question dikhaney key liye
                              f18 = 0; //button dikhaney key liye
                              m1 = k1 + 1;
                              l1 = 0;
                            });
                          }),
                    ],
                  ),
                ),
              if (f17 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.3),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Container(
                          child: l1 == 1
                              ? Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "NOTE: Contact the doctor immediately.",
                                    style: TextStyle(
                                        color: Colors.red,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w900),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f17 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          step1[m1],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )),
                    ),
                  ),
                ),
              if (f18 == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f18 = 1;
                              f19 = 0;
                              f20 = 0;
                              o1 = m1 + 1;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f18 = 1; //button hataney key liye
                              f19 = 0; //next question dikhaney key liye
                              f20 = 0; //button dikhaney key liye
                              o1 = m1 + 1;
                              s1 = 0;
                            });
                          }),
                    ],
                  ),
                ),
              if (f19 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.3),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Container(
                          child: s1 == 1
                              ? Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "NOTE: Need attention, check regularly.",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f19 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          step1[o1],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )),
                    ),
                  ),
                ),
              if (f20 == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f20 = 1;
                              f21 = 0;
                              f22 = 0;
                              r1 = o1 + 1;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f20 = 1; //button hataney key liye
                              f21 = 0; //next question dikhaney key liye
                              f22 = 0; //button dikhaney key liye
                              r1 = o1 + 1;
                              p1 = 0;
                            });
                          }),
                    ],
                  ),
                ),
              if (f21 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.3),
                    child: Container(
                      width: 250,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Container(
                          child: s1 == 1
                              ? Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "NOTE: Need attention, check regularly.",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f21 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text(
                          step1[r1],
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      )),
                    ),
                  ),
                ),
              if (f22 == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f22 = 1;
                              f23 = 0;
                              f24 = 0;
                              r1 = o1 + 1;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f22 = 1; //button hataney key liye
                              f23 = 0; //next question dikhaney key liye
                              f24 = 0; //button dikhaney key liye
                              r1 = o1 + 1;
                              t1 = 0;
                            });
                          }),
                    ],
                  ),
                ),
              if (f23 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.3),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Container(
                          child: t1 == 1
                              ? Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f23 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "Step 3:\nNext, feel your breasts while lying down, using your right hand to feel your left breast and then your left hand to feel your right breast.\nUse a firm, smooth touch with the first few finger pads of your hand, keeping the fingers flat and together. Use a circular motion, about the size of a quarter.Cover the entire breast from top to bottom, side to side — from your collarbone to the top of your abdomen, and from your armpit to your cleavage.\nFollow a pattern to be sure that you cover the whole breast. You can begin at the nipple, moving in larger and larger circles until you reach the outer edge of the breast. You can also move your fingers up and down vertically, in rows, as if you were mowing a lawn. This up-and-down approach seems to work best for most women. Be sure to feel all the tissue from the front to the back of your breasts:\nfor the skin and tissue just beneath, use light pressure; use medium pressure for tissue in the middle of your breasts; use firm pressure for the deep tissue in the back. When you've reached the deep tissue, you should be able to feel down to your ribcage..",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Image.asset(
                                  "assets/3.jpg",
                                  height: 200,
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.low,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "(For Education Purpose)",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
              if (f24 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                            child: Text(
                          " Did you feel any lumps or any other faced issues?",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        )),
                      ),
                    ),
                  ),
                ),
              if (f24 == 0)
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("Yes"),
                          ),
                          onPressed: () {
                            setState(() {
                              f24 = 1;
                              f25 = 0;
                            });
                          }),
                      SizedBox(
                        width: 10,
                      ),
                      RaisedButton(
                          color: Colors.white,
                          child: Center(
                            child: Text("No"),
                          ),
                          onPressed: () {
                            setState(() {
                              f24 = 1; //button hataney key liye
                              f25 = 0;
                              h1 = 1; //next question dikhaney key liye
                            });
                          }),
                    ],
                  ),
                ),
              if (f25 == 0)
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.3),
                    child: Container(
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20),
                              bottomLeft: Radius.circular(20))),
                      child: Center(
                        child: Container(
                          child: h1 == 1
                              ? Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "Yes",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Text(
                                    "No",
                                    style: TextStyle(
                                        color: Colors.black, fontSize: 15),
                                  ),
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              if (f25 == 0)
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 40, 10),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Color(0xFFFFC0CB),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                    child: Center(
                      child: Container(
                          child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Container(
                              child: Text(
                                "Step 4:\nFinally, feel your breasts while you are standing or sitting. Many women find that the easiest way to feel their breasts is when their skin is wet and slippery, so they like to do this step in the shower. Cover your entire breast, using the same hand movements described in step 4.",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 15),
                              ),
                            ),
                            Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Image.asset(
                                  "assets/4.jpg",
                                  height: 200,
                                  fit: BoxFit.cover,
                                  filterQuality: FilterQuality.low,
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "(For Education Purpose)",
                                  style: TextStyle(color: Colors.white),
                                )
                              ],
                            )
                          ],
                        ),
                      )),
                    ),
                  ),
                ),
              if (f25 == 0)
                Center(
                  child: RaisedButton(
                      color: Colors.white,
                      elevation: 0,
                      child: Text(
                        "ANALYSIS REPORT",
                        style: TextStyle(letterSpacing: 2),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SelfReport()));
                      }),
                )
            ],
          ),
        ));
  }
}
