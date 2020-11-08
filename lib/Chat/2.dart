import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:hexcolor/hexcolor.dart';
import 'package:parthi/Appoitment/call.dart';
import 'package:parthi/Appoitment/chat1.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:http/http.dart' as http;

class AllChatsPage extends StatefulWidget {
  final String uid;
  final String image2;
  const AllChatsPage({Key key, this.uid, this.image2}) : super(key: key);
  @override
  _AllChatsPageState createState() => _AllChatsPageState();
}

class _AllChatsPageState extends State<AllChatsPage> {
  int f = 0;
  ClientRole _role = ClientRole.Broadcaster;

  Future<void> onJoin() async {
    // update input validation
    // await for camera and mic permissions before pushing video page
    await _handleCameraAndMic();
    // push video page with given channel name
    await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CallPage(
          channelName: widget.uid,
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

  void friendClicked() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (BuildContext context) {
          return MyApp(
            drimag: widget.image2,
          );
        },
      ),
    );
  }

  Widget buildAllChatList() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            onJoin();
          },
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.pink[100],
            child: Center(
              child: Icon(
                CupertinoIcons.video_camera_solid,
                color: Colors.black,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 30,
        ),
        GestureDetector(
          onTap: () {
            friendClicked();
          },
          child: CircleAvatar(
            radius: 40,
            backgroundColor: Colors.pink[100],
            child: Center(
              child: Icon(
                Icons.chat_bubble_outline,
                color: Colors.black,
              ),
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "CONNECTION",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 3,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Center(child: buildAllChatList()),
    );
  }
}
