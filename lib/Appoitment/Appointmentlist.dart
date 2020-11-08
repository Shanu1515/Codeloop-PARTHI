import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:parthi/Appoitment/Show.dart';

DatabaseReference databaseReference;

class List extends StatefulWidget {
  @override
  _ListState createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  void initState() {
    super.initState();
    databaseReference =
        FirebaseDatabase.instance.reference().child("Appointments");
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
            "APPOINTMENT LISTS",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 3,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Container(
        child: FirebaseAnimatedList(
            query: databaseReference,
            itemBuilder: (_, DataSnapshot snapshot, Animation<double> animation,
                int index) {
              return FutureBuilder<DataSnapshot>(
                future:
                    databaseReference.reference().child(snapshot.key).once(),
                builder: (context, snapshot1) {
                  return snapshot1.hasData
                      ? Hero(
                          tag: index,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Show(
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
                                            check:
                                                snapshot1.data.value['check'],
                                            uid: snapshot1.data.value['uid'],
                                            drimage:
                                                snapshot1.data.value['drimage'],
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
                                          snapshot1.data.value['drimage'])),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    snapshot1.data.value['drname'],
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
