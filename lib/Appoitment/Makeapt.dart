import 'dart:io';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/icon_map.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:uuid/uuid.dart';

import '../global.dart';

final databaseReference = FirebaseDatabase.instance.reference();
String abc;

class Makeapt extends StatefulWidget {
  final String drimage;
  final String drname;

  const Makeapt({Key key, this.drimage, this.drname}) : super(key: key);
  @override
  _MakeaptState createState() => _MakeaptState();
}

class _MakeaptState extends State<Makeapt> {
  bool f = true;
  final picker = ImagePicker();
  String downloadurl;
  File image1;
  var uid = Uuid();
  TextEditingController _patientage = TextEditingController();
  TextEditingController _contact = TextEditingController();
  TextEditingController _address = TextEditingController();
  Future uploadToStorage() async {
    try {
      final DateTime now = DateTime.now();
      final int millSeconds = now.millisecondsSinceEpoch;
      final String month = now.month.toString();
      final String date = now.day.toString();
      final String storageId = (millSeconds.toString() + uid.toString());
      final String today = ('$month-$date');

      final file = await picker.getImage(
        source: ImageSource.gallery,
        imageQuality: 80,
      );
      image1 = File(file.path);
      uploadVideo(image1);
    } catch (error) {
      print(error);
    }
  }

  Future<String> uploadVideo(var videofile) async {
    var uuid = new Uuid().v1();
    StorageReference ref =
        FirebaseStorage.instance.ref().child("post_$uuid.jpg");

    await ref.putFile(videofile).onComplete.then((val) {
      val.ref.getDownloadURL().then((val) {
        print(val);
        downloadurl = val;
        // add(downloadurl); //Val here is Already String
        Future.delayed(Duration(seconds: 2), () {
          setState(() {
            f = false;
          });
        });
      });
    });
    return downloadurl;
  }

  Future<String> add(String image, String name, String age, String contact,
      String add1) async {
    var uuid = new Uuid().v1();
    appointmentid = uuid;
    DatabaseReference _color2 =
        databaseReference.child("Appointments").child(uuid);
    final TransactionResult transactionResult =
        await _color2.runTransaction((MutableData mutableData) async {
      mutableData.value = (mutableData.value ?? 0) + 1;

      return mutableData;
    });
    if (transactionResult.committed) {
      _color2.push().set(<String, String>{
        "image": "true",
        "patientname": "true",
        "patientage": "true",
        "drimage": "true",
        "drname": "true",
        "contact": "true",
        "address": "true",
        "check": "true",
        "report": "true",
        "uid": "true"
      }).then((_) {
        print('Transaction  committed.');

        abc = "success";
      });
    } else {
      print('Transaction not committed.');
      if (transactionResult.error != null) {
        print(transactionResult.error.message);
      }
    }
    _color2.set({
      "image": image,
      "patientname": name,
      "patientage": age,
      "drimage": widget.drimage,
      "drname": widget.drname,
      "contact": contact,
      "address": add1,
      "check": "true",
      "report": downloadurl,
      "uid": uuid
    });

    return abc;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC0CB),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "APPOINTMENT FORM",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 3,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(
                child: CircleAvatar(
                    radius: 60,
                    backgroundColor: Colors.transparent,
                    backgroundImage: NetworkImage(globalimage)),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 400,
                color: Colors.white70,
                child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Text(
                      globalname,
                      style: TextStyle(fontSize: 15),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 400,
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: TextFormField(
                    controller: _patientage,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Patient's Age",
                      hintStyle: TextStyle(color: Colors.black54),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 400,
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: TextFormField(
                    controller: _contact,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Contact Number (Ex. +91000200010)",
                      hintStyle: TextStyle(color: Colors.black54),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 400,
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: TextFormField(
                    controller: _address,
                    maxLines: 4,
                    style: TextStyle(color: Colors.black),
                    decoration: InputDecoration(
                      hintText: "Address",
                      hintStyle: TextStyle(color: Colors.black54),
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      uploadToStorage();
                    },
                    child: Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(10))),
                      child: Center(
                          child: f == true
                              ? Icon(
                                  MdiIcons.paperclip,
                                )
                              : Icon(
                                  Icons.check,
                                  color: Colors.black,
                                )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      add(globalimage, globalname, _patientage.text,
                          _contact.text, _address.text);
                      _patientage.clear();
                      _contact.clear();
                      _address.clear();
                      setState(() {
                        f = true;
                      });
                    },
                    child: Container(
                      height: 70,
                      child: Center(
                        child: Text(
                          "Confirm Appointment",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      width: 200,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
