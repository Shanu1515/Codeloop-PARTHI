import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:parthi/Doctor/Login1%20and%20signup1/Secondscreen/second.dart';

import 'package:parthi/global.dart';

DatabaseReference _databaseReference;

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  Future read() async {
    FirebaseDatabase.instance
        .reference()
        .child("Doctors")
        .child(uid1)
        .once()
        .then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> values;
      values = snapshot.value;

      values.forEach((key, value) {
        //
        FirebaseDatabase.instance
            .reference()
            .child("Doctors")
            .child(uid1)
            .child("username")
            .once()
            .then((DataSnapshot s) {
          globalname = s.value;
        });
      });
      values.forEach((key, value) {
        //
        FirebaseDatabase.instance
            .reference()
            .child("Doctors")
            .child(uid1)
            .child("image")
            .once()
            .then((DataSnapshot s) {
          globalimage = s.value;
        });
      });
    });
  }

  @override
  void initState() {
    super.initState();
    _databaseReference =
        FirebaseDatabase.instance.reference().child("Appointments");
    read();
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
            "APPOINTMENT REQUESTS",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 3,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Container(
        color: Color(0xFFFFC0CB),
        child: FirebaseAnimatedList(
            defaultChild: Center(child: CircularProgressIndicator()),
            query: _databaseReference,
            itemBuilder: (_, DataSnapshot snapshot, Animation<double> animation,
                int index) {
              return FutureBuilder<DataSnapshot>(
                future:
                    _databaseReference.reference().child(snapshot.key).once(),
                builder: (context, snapshot1) {
                  return snapshot1.hasData
                      ? Hero(
                          tag: index,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Second(
                                            address:
                                                snapshot1.data.value['address'],
                                            age: snapshot1
                                                .data.value['patientage'],
                                            index: index,
                                            contact:
                                                snapshot1.data.value['contact'],
                                            name: snapshot1
                                                .data.value['patientname'],
                                            image:
                                                snapshot1.data.value['image'],
                                            report:
                                                snapshot1.data.value['report'],
                                            uid: snapshot1.data.value['uid'],
                                          )));
                            },
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10))),
                                child: Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        radius: 30,
                                        backgroundImage: NetworkImage(
                                            snapshot1.data.value['image']),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Text(
                                        snapshot1.data.value['patientname'],
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 25,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container();
                },
              );
            }),
      ),
    );
  }
}
