import 'package:flutter/material.dart';
import 'package:parthi/messages.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'Choices/Choices.dart';

class SelfReport extends StatefulWidget {
  @override
  _SelfReportState createState() => _SelfReportState();
}

class _SelfReportState extends State<SelfReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Center(
          child: Text(
            "ANALYSIS RESULT",
            style: TextStyle(
                letterSpacing: 5,
                color: Colors.black,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Container(
        width: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircularPercentIndicator(
              radius: 160.0,
              lineWidth: 20.0,
              percent: 0.4,
              center: new Text("40%"),
              progressColor: Colors.red[600],
              backgroundColor: Colors.green[500],
            ),
            SizedBox(
              height: 80,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
              child: Container(
                width: 500,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "RISK FACTORS:",
                      style: TextStyle(fontSize: 18, letterSpacing: 3),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "1. Unusual Size",
                      style: TextStyle(fontSize: 18, letterSpacing: 3),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "2. Soarness around nipples",
                      style: TextStyle(fontSize: 18, letterSpacing: 3),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "3. Skin Pigmentation",
                      style: TextStyle(fontSize: 18, letterSpacing: 3),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "4. Lumps Felt",
                      style: TextStyle(fontSize: 18, letterSpacing: 3),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    Center(
                      child: Container(
                        height: 50,
                        width: 300,
                        color: Colors.black12,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Message()));
                              },
                              child: Container(
                                width: 150,
                                height: 50,
                                color: Colors.blue[900],
                                child: Center(
                                    child: Text(
                                  "Retake\nAssessment",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Choices()));
                              },
                              child: Container(
                                width: 150,
                                height: 50,
                                color: Colors.blue[100],
                                child: Center(
                                    child: Text(
                                  "End Now",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w500),
                                )),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
