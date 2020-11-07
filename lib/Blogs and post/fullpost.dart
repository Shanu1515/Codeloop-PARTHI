import 'package:flutter/material.dart';

class More extends StatefulWidget {
  final int index;
  final String name;
  final String image;
  final String post;
  const More({Key key, this.index, this.name, this.image, this.post})
      : super(key: key);

  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Hero(
      tag: widget.index,
      child: Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: true,
            iconTheme: IconThemeData(color: Colors.black),
            backgroundColor: Colors.white,
            elevation: 0,
            title: Flexible(
              child: Text(
                widget.name,
                style: TextStyle(
                    letterSpacing: 12,
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 3,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill, image: NetworkImage(widget.image))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    widget.post,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
