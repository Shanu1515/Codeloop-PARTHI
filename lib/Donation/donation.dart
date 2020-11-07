import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:parthi/Donation/Organization.dart';

class Donation extends StatefulWidget {
  @override
  _DonationState createState() => _DonationState();
}

class _DonationState extends State<Donation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "PARTHI",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 20,
                fontSize: 25,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 20),
                child: Container(
                  decoration: BoxDecoration(
                      color: Color(0xFFFFC0CB),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          child: Text(
                            "With your support, we can illuminate a brighter future in which all women can live their",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 20,
                                letterSpacing: 1.5,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        Center(
                          child: Container(
                            child: Text(
                              "BRIGHT FUTURE.",
                              style: TextStyle(
                                  fontSize: 25,
                                  letterSpacing: 2,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Text(
                  "YOUR INFORMATION",
                  style: TextStyle(
                      letterSpacing: 7,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                "NAME",
                style: TextStyle(
                    letterSpacing: 3,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Full Name (Ex. Emma Watson)",
                      hintStyle: TextStyle(color: Colors.black54),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "EMAIL",
                style: TextStyle(
                    letterSpacing: 3,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Email",
                      hintStyle: TextStyle(color: Colors.black54),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "PHONE NUMBER",
                style: TextStyle(
                    letterSpacing: 3,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Phone Number (Ex. +910002009019)",
                      hintStyle: TextStyle(color: Colors.black54),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "YOUR REMARKS",
                style: TextStyle(
                    letterSpacing: 3,
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                width: 400,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: TextFormField(
                    maxLines: 5,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Remarks",
                      hintStyle: TextStyle(color: Colors.black54),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Center(
                child: Container(
                    height: 52,
                    width: 352,
                    color: Colors.black,
                    child: Center(
                      child: Container(
                        width: 350,
                        height: 50,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(
                              child: Center(
                                  child: Text(
                                "DONATE ONCE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w900),
                              )),
                              color: Colors.pinkAccent,
                              height: 50,
                              width: 175,
                            ),
                            Container(
                              child: Center(
                                  child: Text(
                                "DONATE MONTHLY",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w900),
                              )),
                              color: Colors.white,
                              height: 50,
                              width: 175,
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            type: PageTransitionType.fade,
                            child: Organization()));
                  },
                  child: Container(
                    height: 50,
                    width: 300,
                    decoration: BoxDecoration(
                        color: Colors.blue[400],
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Center(
                        child: Text(
                      "PROCEED TO PAY",
                      style: TextStyle(
                          color: Colors.white,
                          letterSpacing: 2,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 300,
                width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/ty.gif"), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "ADIRA",
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 20,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
