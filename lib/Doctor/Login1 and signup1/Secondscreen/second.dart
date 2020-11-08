import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:parthi/Doctor/Login1%20and%20signup1/Secondscreen/show1.dart';
import 'package:parthi/global.dart';

//import 'package:hackathon2/Doctor/Chat/1.dart';

String abc;

final databaseReference = FirebaseDatabase.instance.reference();

class Second extends StatefulWidget {
  final int index;
  final String name;
  final String age;
  final String contact;
  final String address;
  final String image;
  final String report;
  final String uid;
  const Second(
      {Key key,
      this.index,
      this.name,
      this.age,
      this.contact,
      this.address,
      this.image,
      this.report,
      this.uid})
      : super(key: key);
  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  Future<String> add(String image, String name, String age, String contact,
      String add1, String report, String uid, String check) async {
    //var uuid = new Uuid().v1();
    //appointmentid = uuid;
    DatabaseReference _color2 =
        databaseReference.child("Appointments").child(uid);
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
        "contact": "true",
        "address": "true",
        "check": "true",
        "report": "true",
        "drimage": "true",
        "drname": "true",
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
      "contact": contact,
      "address": add1,
      "check": check,
      "drimage": globalimage,
      "drname": globalname,
      "report": report,
      "uid": uid
    });
    return abc;
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
            "REQUESTS",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 5,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Hero(
        tag: widget.index,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 1.8,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(widget.image)),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(30),
                              bottomRight: Radius.circular(30))),
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height / 2.2,
                    ),
                    Positioned(
                      left: MediaQuery.of(context).size.width / 11,
                      bottom: 10,
                      child: Card(
                        elevation: 20,
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Patient Name: " + widget.name,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Patient age: " + widget.age,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "patient contact: " + widget.contact,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 23,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          color: Color(0xFFFF69B4),
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: MediaQuery.of(context).size.height / 6,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text("Report", style: TextStyle(fontSize: 25)),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(widget.report),
                          fit: BoxFit.fill)),
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: MediaQuery.of(context).size.height / 1.8,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: GestureDetector(
                    onTap: () {
                      add(widget.image, widget.name, widget.age, widget.contact,
                          widget.address, widget.report, widget.uid, "false");
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Show1(
                                    uid: widget.uid,
                                  )));
                    },
                    child: Container(
                      height: 40,
                      child: Center(
                        child: Text(
                          "Accept",
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      width: 200,
                      decoration: BoxDecoration(
                          color: Color(0xFFFF69B4),
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
