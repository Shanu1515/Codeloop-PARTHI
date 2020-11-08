import 'package:flutter/material.dart';

class Show extends StatefulWidget {
  final int index;
  final String name;
  final String age;
  final String contact;
  final String address;
  final String image;
  final String report;
  final String check;
  final String uid;
  final String drimage;
  const Show(
      {Key key,
      this.index,
      this.name,
      this.age,
      this.contact,
      this.address,
      this.image,
      this.report,
      this.check,
      this.uid,
      this.drimage})
      : super(key: key);
  @override
  _ShowState createState() => _ShowState();
}

class _ShowState extends State<Show> {
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
            "APPOINTMENT STATUS",
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
                      if (widget.check == "false") {
                        //Navigator.push(
                        //   context,
                        //  MaterialPageRoute(
                        //  builder: (context) => AllChatsPage(
                        //     uid: widget.uid,
                        //   image2: widget.drimage,
                        // )));
                      }
                    },
                    child: Container(
                      height: 40,
                      child: Center(
                        child: widget.check == "true"
                            ? Text(
                                "Pending",
                                style: TextStyle(fontSize: 16),
                              )
                            : Text(
                                "Accepted",
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
