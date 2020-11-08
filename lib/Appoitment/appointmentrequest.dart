import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:parthi/Appoitment/Makeapt.dart';

DatabaseReference datbase;
String check3;

class Request extends StatefulWidget {
  final int index;
  final String doctorimage;
  final String doctorname;
  final String fee;
  final String degree;
  final String exp;
  final String language;
  final String drcertificate;
  const Request(
      {Key key,
      this.index,
      this.doctorimage,
      this.fee,
      this.degree,
      this.exp,
      this.doctorname,
      this.language,
      this.drcertificate})
      : super(key: key);
  @override
  _RequestState createState() => _RequestState();
}

class _RequestState extends State<Request> {
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
            "APPOINTMENT",
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 2,
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage(widget.doctorimage)),
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
                                  "Degree: " + widget.degree,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Experience: " + widget.exp,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Fees: " + widget.fee,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Known Languages: " + widget.language,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              )
                            ],
                          ),
                          color: Color(0xFFFF69B4),
                          width: MediaQuery.of(context).size.width / 1.2,
                          height: MediaQuery.of(context).size.height / 5,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Certificate",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: NetworkImage(widget.drcertificate),
                          fit: BoxFit.fill)),
                  width: MediaQuery.of(context).size.width / 1.3,
                  height: MediaQuery.of(context).size.height / 1.9,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                  child: GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Makeapt(
                                drimage: widget.doctorimage,
                                drname: widget.doctorname,
                              )));
                },
                child: Container(
                  height: 50,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFFFFC0CB),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Center(
                      child: Text(
                    "Book an appointment",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                  )),
                ),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
