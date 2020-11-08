import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:parthi/Appoitment/Appointmentlist.dart';
import 'package:parthi/Appoitment/appointmentrequest.dart';

DatabaseReference database1;

class Appointment3 extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment3> {
  @override
  void initState() {
    super.initState();
    database1 = FirebaseDatabase.instance.reference().child("Doctors");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
          IconButton(
              icon: Icon(Icons.list),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => List()));
              })
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "List of Doctors",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        child: FirebaseAnimatedList(
            defaultChild: Center(child: CircularProgressIndicator()),
            query: database1,
            itemBuilder: (_, DataSnapshot snapshot, Animation<double> animation,
                int index) {
              return FutureBuilder<DataSnapshot>(
                future: database1.reference().child(snapshot.key).once(),
                builder: (context, snapshot1) {
                  return snapshot1.hasData
                      ? Hero(
                          tag: index,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Request(
                                            index: index,
                                            doctorname: snapshot1
                                                .data.value['username'],
                                            doctorimage:
                                                snapshot1.data.value['image'],
                                            fee: snapshot1.data.value['fee'],
                                            degree:
                                                snapshot1.data.value['degree'],
                                            exp: snapshot1.data.value['exp'],
                                            language: snapshot1
                                                .data.value['language'],
                                            drcertificate: snapshot1
                                                .data.value['certificate'],
                                          )));
                            },
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
                                    snapshot1.data.value['username'],
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
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
