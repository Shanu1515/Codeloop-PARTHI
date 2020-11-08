import 'dart:async';

import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:parthi/Community/call.dart';
import 'package:parthi/global.dart';

import 'package:permission_handler/permission_handler.dart';

int f, g, k;
String text1, text2;

class Community1 extends StatefulWidget {
  final String groupname;

  const Community1({Key key, this.groupname}) : super(key: key);
  @override
  _Community1State createState() => _Community1State();
}

class _Community1State extends State<Community1> {
  TextEditingController controller = TextEditingController();

  ClientRole _role = ClientRole.Broadcaster;

  Future<void> onJoin() async {
    // update input validation
    // await for camera and mic permissions before pushing video page
    await _handleCameraAndMic();
    // push video page with given channel name
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CallPage1(
          channelName: 'abc',
          role: _role,
        ),
      ),
    );
  }

  Future<void> _handleCameraAndMic() async {
    await PermissionHandler().requestPermissions(
      [PermissionGroup.camera, PermissionGroup.microphone],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              icon: Icon(
                Icons.video_call_outlined,
                color: Colors.black,
              ),
              onPressed: () {
                onJoin();
              })
        ],
        leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.black),
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                f = 1;
                g = 0;
              });
            }),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            widget.groupname,
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 1.5,
              // color: Colors.green,
              child: Column(
                children: [
                  if (f == 0)
                    DelayedDisplay(
                      delay: Duration(seconds: 0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.8,
                            height: MediaQuery.of(context).size.width / 9,
                            decoration: BoxDecoration(
                                color: Colors.pink[100],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomRight: Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 20,
                                    backgroundImage: NetworkImage(globalimage),
                                  ),
                                  Center(
                                    child: Text(
                                      text1,
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  SizedBox(
                    height: 20,
                  ),
                  if (g == 1)
                    DelayedDisplay(
                      delay: Duration(seconds: 5),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            height: MediaQuery.of(context).size.width / 9,
                            decoration: BoxDecoration(
                                color: Colors.pink[100],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    radius: 20,
                                    backgroundImage:
                                        ExactAssetImage("assets/girl4.jpeg"),
                                  ),
                                  Center(
                                    child: Text(
                                      "Welcome to our group",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (g == 1)
                    DelayedDisplay(
                      delay: Duration(seconds: 8),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.8,
                            height: MediaQuery.of(context).size.width / 9,
                            decoration: BoxDecoration(
                                color: Colors.pink[100],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage:
                                        ExactAssetImage('assets/girl6.jpeg'),
                                  ),
                                  Center(
                                    child: Text(
                                      "How are you doing ",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (g == 1)
                    DelayedDisplay(
                      delay: Duration(seconds: 10),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            width: MediaQuery.of(context).size.width / 1.8,
                            height: MediaQuery.of(context).size.width / 9,
                            decoration: BoxDecoration(
                                color: Colors.pink[100],
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10))),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage:
                                        ExactAssetImage('assets/girl7.jpg'),
                                  ),
                                  Center(
                                    child: Text(
                                      "Hi",
                                      style: TextStyle(
                                          color: Colors.black, fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 6.8,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: "Write Something",
                      ),
                    ),
                  ),
                ),
                IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      text1 = controller.text;
                      controller.clear();
                      setState(() {
                        f = 0;
                        g = 1;
                      });
                    })
              ],
            )
          ],
        ),
      ),
    );
  }
}
