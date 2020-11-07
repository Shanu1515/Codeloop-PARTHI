import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:uuid/uuid.dart';

AuthResult authResult;
String user;
int g = 1;

class SignUp2 extends StatefulWidget {
  final Function toggle;
  SignUp2(this.toggle);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp2> {
  final formkey = GlobalKey<FormState>();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  TextEditingController _name = TextEditingController();
  TextEditingController _email = TextEditingController();
  TextEditingController _pwd = TextEditingController();
  TextEditingController _pwd1 = TextEditingController();
  TextEditingController _exp = TextEditingController();
  TextEditingController _fee = TextEditingController();
  TextEditingController _deg = TextEditingController();
  TextEditingController _language = TextEditingController();
  final _auth = FirebaseAuth.instance;
  bool check = false;
  final picker = ImagePicker();
  String downloadurl;
  String downloadurl1;
  File image1;
  File image2;
  final databaseReference = FirebaseDatabase.instance.reference();
  var uid = Uuid();

  void _trysubmit(BuildContext ctx, String name, String email, String pwd,
      String pwd1, String exp, String fee, String degree, String language) {
    final isvalid = formkey.currentState.validate();
    FocusScope.of(ctx).unfocus();
    if (isvalid) {
      formkey.currentState.save();
    } else {}
    _submitAuthForm(name.trim(), email.trim(), pwd.trim(), pwd1.trim(),
        exp.trim(), fee.trim(), degree.trim(), language.trim(), ctx);
  }

  void _submitAuthForm(
    var name1,
    var email1,
    var pwd1,
    var pwd2,
    var exp,
    var fee,
    var degree,
    var language,
    BuildContext ctx,
  ) async {
    try {
      authResult = await _auth.createUserWithEmailAndPassword(
          email: email1, password: pwd1);
      user = authResult.user.uid;
    } on PlatformException catch (err) {
      var message = "An error occured,please check your credentials";
      if (err.message != null) {
        message = err.message;
      }
      _scaffoldKey.currentState.showSnackBar(SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
      ));
    } catch (err) {
      print(err);
    }
    add(name1, email1, pwd1, exp, fee, degree, language);
  }

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
            check = true;
          });
        });
      });
    });
    return downloadurl;
  }

  Future uploadToStorage1() async {
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
      image2 = File(file.path);
      uploadVideo1(image2);
    } catch (error) {
      print(error);
    }
  }

  Future<String> uploadVideo1(var videofile) async {
    var uuid = new Uuid().v1();
    StorageReference ref =
        FirebaseStorage.instance.ref().child("post_$uuid.jpg");

    await ref.putFile(videofile).onComplete.then((val) {
      val.ref.getDownloadURL().then((val) {
        print(val);
        downloadurl1 = val;
        // add(downloadurl); //Val here is Already String
        setState(() {
          g = 0;
        });
      });
    });
    return downloadurl1;
  }

  Future<void> add(String username, String useremail, String passwd, String exp,
      String fee, String degree, String language1) async {
    // var uuid = new Uuid().v1();
    DatabaseReference _color2 = databaseReference.child("Doctors").child(user);
    final TransactionResult transactionResult =
        await _color2.runTransaction((MutableData mutableData) async {
      mutableData.value = (mutableData.value ?? 0) + 1;

      return mutableData;
    });
    if (transactionResult.committed) {
      _color2.push().set(<String, String>{
        "image": "true",
        "username": "true",
        "email": "true",
        "pwd": "true",
        "exp": "true",
        "fee": "true",
        "degree": "true",
        "language": "true",
        "certificate": "true",
        "uid": "true"
      }).then((_) {
        print('Transaction  committed.');
      });
    } else {
      print('Transaction not committed.');
      if (transactionResult.error != null) {
        print(transactionResult.error.message);
      }
    }
    _color2.set({
      "image": downloadurl,
      "username": username,
      "email": useremail,
      "pwd": passwd,
      "exp": exp,
      "fee": fee,
      "degree": degree,
      "language": language1,
      "certificate": downloadurl1,
      "uid": user
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Container(
              color: Color(0xFFFFC0CB),
              child: Container(
                height: 300,
                child: Center(
                  child: Container(
                    height: 180,
                    width: 240,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        image: DecorationImage(
                            image: AssetImage("assets/Logo.jpeg"),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        child: Form(
                          key: formkey,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                "Add your profile image",
                                style: TextStyle(
                                  fontSize: 17,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  uploadToStorage();
                                },
                                child: CircleAvatar(
                                  backgroundColor: Color(0xFFFFC0CB),
                                  radius: 30.6,
                                  backgroundImage: check == false
                                      ? ExactAssetImage("assets/5.png")
                                      : NetworkImage(downloadurl),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 40, 10, 0),
                                child: Container(
                                  color: Colors.white10,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: TextFormField(
                                      controller: _name,
                                      validator: (val) {
                                        return val.isEmpty || val.length < 4
                                            ? "Username is too short"
                                            : null;
                                      },
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        hintText: "Username",
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: Container(
                                  color: Colors.white10,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: TextFormField(
                                      controller: _email,
                                      validator: (val) {
                                        return RegExp(
                                                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                                .hasMatch(val)
                                            ? null
                                            : "Provide a valid Email Address*";
                                      },
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        hintText: "Your Email",
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: Container(
                                  color: Colors.white10,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: TextFormField(
                                      controller: _pwd,
                                      obscureText: true,
                                      validator: (val) {
                                        return val.length > 7
                                            ? null
                                            : "Password must be of atleast 8 characters*";
                                      },
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        hintText: "Create new password",
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 10, 0),
                                child: Container(
                                  color: Colors.white10,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 0, 10, 10),
                                    child: TextFormField(
                                      controller: _pwd1,
                                      validator: (val) {
                                        return val == _pwd.text
                                            ? null
                                            : "Password is not same*";
                                      },
                                      obscureText: true,
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        hintText: "Confirm password",
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Container(
                                  color: Colors.white10,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 0, 10, 10),
                                    child: TextFormField(
                                      controller: _exp,
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        hintText: "Experience",
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Container(
                                  color: Colors.white10,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 0, 10, 10),
                                    child: TextFormField(
                                      controller: _fee,
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        hintText: "Your Fees in USD",
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Container(
                                  color: Colors.white10,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 0, 10, 10),
                                    child: TextFormField(
                                      controller: _deg,
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        hintText: "degree",
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Container(
                                  color: Colors.white10,
                                  child: Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        10, 0, 10, 10),
                                    child: TextFormField(
                                      controller: _language,
                                      style: TextStyle(color: Colors.black),
                                      decoration: InputDecoration(
                                        hintText: "Language Known",
                                        hintStyle:
                                            TextStyle(color: Colors.black54),
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  uploadToStorage1().then((value) {
                                    showDialog(
                                        context: context,
                                        builder: (context) {
                                          Future.delayed(Duration(seconds: 5),
                                              () {
                                            Navigator.of(context).pop(true);
                                          });
                                          return AlertDialog(
                                            content: g == 0
                                                ? CircularProgressIndicator()
                                                : Icon(Icons.check,
                                                    color: Colors.green),
                                          );
                                        });
                                  });
                                },
                                child: Container(
                                  height: 50,
                                  width: 300,
                                  color: Color(0xFFFFC0CB),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Icon(
                                        MdiIcons.attachment,
                                        size: 30,
                                      ),
                                      SizedBox(
                                        width: 20,
                                      ),
                                      Text(
                                        "Upload your documents\nto be verified.",
                                        style: TextStyle(fontSize: 17),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          _trysubmit(
                              context,
                              _name.text,
                              _email.text,
                              _pwd.text,
                              _pwd1.text,
                              _exp.text,
                              _fee.text,
                              _deg.text,
                              _language.text);
                          _name.clear();
                          _email.clear();
                          _pwd.clear();
                          _pwd1.clear();
                          _exp.clear();
                          _fee.clear();
                          _deg.clear();
                          _language.clear();
                        },
                        child: Container(
                          height: 40,
                          width: 300,
                          decoration: BoxDecoration(
                              color: Color(0xFFFF69B4),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Center(
                              child: Text(
                            "SIGN UP",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                letterSpacing: 5,
                                fontWeight: FontWeight.w800),
                          )),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              height: 1,
                              width: 150,
                              color: Colors.black87,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "OR",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 1,
                              width: 150,
                              color: Colors.black87,
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              "Already have an Account?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 17),
                            ),
                            GestureDetector(
                              onTap: () {
                                widget.toggle();
                              },
                              child: Text(
                                " Sign In.",
                                style: TextStyle(
                                    color: Color(0xFFFF69B4),
                                    fontWeight: FontWeight.w900,
                                    fontSize: 17),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
