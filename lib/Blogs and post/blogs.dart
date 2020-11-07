import 'dart:ui';

import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:like_button/like_button.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:parthi/Blogs%20and%20post/fullpost.dart';
import 'package:parthi/Comments/comment.dart';
import 'package:share/share.dart';

import '../global.dart';

DatabaseReference database1;
bool check3 = false;
String image;
String comment;
String post;
int i = 0;
bool like = false;

class Blogs extends StatefulWidget {
  @override
  _BlogsState createState() => _BlogsState();
}

class _BlogsState extends State<Blogs> {
  Future<List> read() async {
    FirebaseDatabase.instance
        .reference()
        .child("Posts")
        .once()
        .then((DataSnapshot snapshot) {
      Map<dynamic, dynamic> values;
      values = snapshot.value;
      color.clear(); //Run kar wait
      array.clear();
      color4.clear();
      values.forEach((key, value) {
        FirebaseDatabase.instance
            .reference()
            .child("Posts")
            .child(key)
            .child("username")
            .once()
            .then((DataSnapshot s) {
          //run
          color.add(s.value);
          //print(array.length);
        });
        FirebaseDatabase.instance
            .reference()
            .child("Posts")
            .child(key)
            .child("post")
            .once()
            .then((DataSnapshot s) {
          //run
          color4.add(s.value);
          //print(array.length);
        });
        FirebaseDatabase.instance
            .reference()
            .child("Posts")
            .child(key)
            .child("image")
            .once()
            .then((DataSnapshot s) {
          //run
          array.add(s.value);
          //print(array.length);
        });
        FirebaseDatabase.instance
            .reference()
            .child("Posts")
            .child(key)
            .child("uid")
            .once()
            .then((DataSnapshot s) {
          //run
          color5.add(s.value);
          //print(array.length);
        });
        //print(value);
      });
    });
    return color;
  }

  @override
  void initState() {
    super.initState();
    database1 = FirebaseDatabase.instance.reference().child("Posts");
    read();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "PARTHI",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 20,
                fontSize: 25,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
              child: FirebaseAnimatedList(
                  sort: (a, b) => (b.key.compareTo(a.key)),
                  defaultChild: Center(
                    child: CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                  ),
                  query: database1,
                  itemBuilder: (_, DataSnapshot snapshot,
                      Animation<double> animation, int index) {
                    return FutureBuilder<DataSnapshot>(
                      future: database1.reference().child(snapshot.key).once(),
                      builder: (context, snapshot1) {
                        return snapshot1.hasData
                            ? Hero(
                                tag: index,
                                child: Center(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 5, 5, 5),
                                    child: GestureDetector(
                                      onLongPress: () {
                                        setState(() {
                                          check3 = true;
                                          image = snapshot1.data.value['image'];
                                          comment = snapshot1.data.value['uid'];
                                          post = snapshot1.data.value['post'];
                                        });
                                      },
                                      excludeFromSemantics: true,
                                      child: Card(
                                        shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10))),
                                        elevation: 10,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: Color(0xFFFFC0CB),
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(10))),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 10, 20, 5),
                                                child: Center(
                                                  child: Text(
                                                    snapshot1
                                                        .data.value['username'],
                                                    style: TextStyle(
                                                        color: Colors.black87,
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        letterSpacing: 3,
                                                        fontSize: 20),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 0, 5, 0),
                                                child: Text(
                                                  snapshot1.data.value['post']
                                                      .toString()
                                                      .substring(0, 79),
                                                  style: TextStyle(
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      fontSize: 16),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    const EdgeInsets.fromLTRB(
                                                        10, 0, 20, 10),
                                                child: GestureDetector(
                                                  onTap: () {
                                                    /* showDialog(
                                                      context: context,
                                                      builder: (context) {
                                                        return AlertDialog(
                                                          scrollable: true,
                                                          content: Text(snapshot1
                                                              .data.value['post']),
                                                        );
                                                      });*/
                                                    Navigator.push(
                                                        context,
                                                        MaterialPageRoute(
                                                            builder:
                                                                (context) =>
                                                                    More(
                                                                      index:
                                                                          index,
                                                                      name: snapshot1
                                                                          .data
                                                                          .value['username'],
                                                                      image: snapshot1
                                                                          .data
                                                                          .value['image'],
                                                                      post: snapshot1
                                                                          .data
                                                                          .value['post'],
                                                                    )));
                                                  },
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            0.0),
                                                    child: Container(
                                                      child: Text(
                                                        "Read More...",
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: 17),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                width: 550,
                                                height: 330,
                                                decoration: BoxDecoration(
                                                    image: DecorationImage(
                                                        image: NetworkImage(
                                                            snapshot1
                                                                    .data.value[
                                                                'image']),
                                                        fit: BoxFit.fill)),
                                              ),
                                              /*Container(
                                              child: Padding(
                                                padding: const EdgeInsets.fromLTRB(
                                                    0, 10, 0, 10),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    Icon(
                                                      MdiIcons.heart,
                                                      color: Colors.red,
                                                      size: 30,
                                                    ),
                                                    SizedBox(
                                                      width: 100,
                                                    ),
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder: (context) =>
                                                                    Comment1(
                                                                      comment1: snapshot1
                                                                              .data
                                                                              .value[
                                                                          'uid'],
                                                                    )));
                                                      },
                                                      child: Icon(
                                                        Icons.insert_comment,
                                                        color: Colors.white,
                                                        size: 30,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      width: 100,
                                                    ),
                                                    Icon(
                                                      MdiIcons.share,
                                                      color: Colors.black,
                                                      size: 30,
                                                    )
                                                  ],
                                                ),
                                              ),
                                            ),*/
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            : Container();
                      },
                    );
                  })),
          if (check3) ...[
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5.0,
                sigmaY: 5.0,
              ),
              child: Container(
                color: Colors.white.withOpacity(0.6),
              ),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height / 3,
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            alignment: Alignment.center,
                            image: NetworkImage(image),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    LikeButton(
                      circleColor: CircleColor(
                          start: Color(0xff00ddff), end: Color(0xff0099cc)),
                      bubblesColor: BubblesColor(
                        dotPrimaryColor: Color(0xff33b5e5),
                        dotSecondaryColor: Color(0xff0099cc),
                      ),
                      likeBuilder: (bool isLiked) {
                        return Icon(
                          MdiIcons.heart,
                          color: like ? Colors.red : Colors.grey,
                        );
                      },
                      likeCount: i,
                      onTap: (isLiked) async {
                        setState(() {
                          i = i + 1;
                          like = true;
                        });
                        return true;
                      },
                      countBuilder: (int count, bool isLiked, String text) {
                        var color = like == false ? Colors.grey : Colors.black;
                        Widget result;
                        if (count == 0) {
                          result = Text(
                            "love",
                            style: TextStyle(color: color),
                          );
                        } else
                          result = Text(
                            text,
                            style: TextStyle(color: color),
                          );
                        return result;
                      },
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          check3 = false;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    Comment1(comment1: comment)));
                      },
                      child: Icon(
                        Icons.insert_comment,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    GestureDetector(
                      onTap: () {
                        final RenderBox box = context.findRenderObject();
                        Share.share(post,
                                subject: 'Read my survival story',
                                sharePositionOrigin:
                                    box.localToGlobal(Offset.zero) & box.size)
                            .then((value) {
                          setState(() {
                            check3 = false;
                          });
                        });
                      },
                      child: Icon(
                        MdiIcons.share,
                        color: Colors.black,
                        size: 30,
                      ),
                    )
                  ])
                ],
              ),
            ),
          ]
        ],
      ),
    );
  }
}
