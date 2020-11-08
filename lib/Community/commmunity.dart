import 'package:flutter/material.dart';
import 'package:parthi/Community/communtity1.dart';

class Community extends StatefulWidget {
  @override
  _CommunityState createState() => _CommunityState();
}

class _CommunityState extends State<Community> {
  List<String> abc = ["Hello"];
  List<String> abc1 = ['Group1', 'Group2', 'Group3'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFFFC0CB),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          title: Center(
            child: Text(
              "COMMUNITY",
              style: TextStyle(
                  color: Colors.black,
                  letterSpacing: 5,
                  fontSize: 20,
                  fontWeight: FontWeight.w400),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Community1(
                              groupname: "TEXAS CLUB",
                            )));
              },
              child: Card(
                  child: Container(
                height: 170,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Center(
                        child: Text(
                          "TEXAS CLUB",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              letterSpacing: 4),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl12.jpeg"),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl11.jpeg"),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl4.jpeg"),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl5.jpeg"),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl7.jpg"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Community1(
                              groupname: "CALIFORNIA SUPPORT COMMUNITY",
                            )));
              },
              child: Card(
                  child: Container(
                height: 170,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Center(
                        child: Text(
                          "CALIFORNIA SUPPORT COMMUNITY",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              letterSpacing: 4),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl8.jpeg"),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl7.jpg"),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl9.jpeg"),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl4.jpeg"),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl10.jpeg"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Community1(
                              groupname: "PINK WARRIORS COMMUNITY",
                            )));
              },
              child: Card(
                  child: Container(
                height: 170,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Center(
                        child: Text(
                          "PINK WARRIORS COMMUNITY",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 22,
                              letterSpacing: 4),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl11.jpeg"),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl12.jpeg"),
                            ),
                            CircleAvatar(
                              radius: 20,
                              backgroundColor: Colors.transparent,
                              backgroundImage:
                                  ExactAssetImage("assets/girl13.jpeg"),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )),
            ),
          ],
        ));
  }
}
