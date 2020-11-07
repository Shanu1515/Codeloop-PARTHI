import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:parthi/Doctor/Login1%20and%20signup1/Authenticate1.dart';
import 'package:parthi/Language/language1.dart';
import 'package:parthi/Login%20and%20signup/Authenticate.dart';

String c;

class One1 extends StatefulWidget {
  static void setLocale(BuildContext context, Locale locale) {
    _One1State state = context.findAncestorStateOfType<_One1State>();
    state.setLocale(locale);
  }

  @override
  _One1State createState() => _One1State();
}

class _One1State extends State<One1> {
  Locale _locale;

  void setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      supportedLocales: [
        const Locale('en', 'US'), // English, no country code
        const Locale('hi', 'IN'), // Hebrew, no country code
        // Chinese *See Advanced Locales below*
        // ... other locales the app supports
      ],
      locale: _locale,
      localizationsDelegates: [
        DemoLocalization.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      localeResolutionCallback: (devicelocale, supportedlocale) {
        for (var locale in supportedlocale) {
          if (locale.languageCode == devicelocale.languageCode &&
              locale.countryCode == devicelocale.countryCode) {
            return devicelocale;
          }
        }
        return supportedlocale.first;
      },
      home: One(),
    );
  }
}

class One extends StatefulWidget {
  @override
  _OneState createState() => _OneState();
}

class _OneState extends State<One> {
  void _changelanguage(String change1) {
    Locale _temp;
    switch (change1) {
      case 'en':
        _temp = Locale(change1, 'US');
        break;
      case 'hi':
        _temp = Locale(change1, 'IN');
        break;
    }

    One1.setLocale(context, _temp);
  }

  List<String> a = ["English", "हिंदी", "தமிழ்", "বাংলা", "ਪੰਜਾਬੀ"];
  List<String> b = ["en", "hi"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFC0CB),
      appBar: AppBar(backgroundColor: Colors.white, elevation: 0, actions: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
                icon: Icon(
                  Icons.language_outlined,
                  size: 29,
                  color: Colors.black,
                ),
                onPressed: () {
                  showModalBottomSheet(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              topRight: Radius.circular(20))),
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height / 1.5,
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text("Please Select Your Language",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15)),
                                  ),
                                  Text("कृपया अपनी भाषा चुनें",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 15)),
                                  Container(
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height /
                                        2.5,
                                    child: ListView.builder(
                                        itemCount: a.length,
                                        itemBuilder: (context, index) {
                                          return Column(
                                            children: [
                                              ListTile(
                                                focusColor: Colors.blue,
                                                hoverColor: Colors.blue,
                                                onTap: () {
                                                  c = b[index];
                                                },
                                                title: Center(
                                                    child: Text(a[index])),
                                              ),
                                              Divider()
                                            ],
                                          );
                                        }),
                                  ),
                                  SizedBox(
                                    height:
                                        MediaQuery.of(context).size.height / 40,
                                  ),
                                  SizedBox(
                                    width: 100,
                                    height: 50,
                                    child: RaisedButton(
                                        color: Colors.black,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        child: Center(
                                          child: Text(
                                            "Next",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                        onPressed: () {
                                          _changelanguage(c);
                                          Navigator.pop(context);
                                        }),
                                  )
                                  /* DropdownButton(
                              underline: SizedBox(),
                              icon: Icon(
                                Icons.language,
                                color: Colors.black,
                              ),
                              items: Change.languageList()
                                  .map<DropdownMenuItem<Change>>(
                                      (e) => DropdownMenuItem(
                                          value: e,
                                          child: Center(
                                            child: Text(
                                              e.name,
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          )))
                                  .toList(),
                              onChanged: (Change change) {
                                _changelanguage(change);
                              }),*/
                                ]));
                      });
                })),
      ]),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Colors.white,
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 0, 30, 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text(
                                DemoLocalization.of(context)
                                    .gettranslatedvalue('welcome to '),
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 40,
                                    fontWeight: FontWeight.w900),
                              )),
                              Text(
                                DemoLocalization.of(context)
                                    .gettranslatedvalue('parthi'),
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    fontSize: 45,
                                    letterSpacing: 5,
                                    fontWeight: FontWeight.w300),
                              )
                            ],
                          ),
                        ),
                        Container(
                          height: 102,
                          width: 102,
                          color: Colors.black,
                          child: Center(
                            child: Container(
                              height: 130,
                              width: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage("assets/Logo.jpeg")),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                DemoLocalization.of(context)
                    .gettranslatedvalue('Select your account type'),
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 20, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Authenticate()));
                    },
                    child: Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                          child: Text(
                        DemoLocalization.of(context)
                            .gettranslatedvalue('Patient'),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Authenticate1()));
                    },
                    child: Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                          child: Text(
                        DemoLocalization.of(context)
                            .gettranslatedvalue('Doctor'),
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w700,
                            letterSpacing: 1),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Authenticate()));
                    },
                    child: Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          DemoLocalization.of(context)
                              .gettranslatedvalue('Health Enthusiast'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1),
                        ),
                      )),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Authenticate()));
                    },
                    child: Container(
                      height: 100,
                      width: 180,
                      decoration: BoxDecoration(
                          color: Colors.white70,
                          borderRadius: BorderRadius.all(Radius.circular(20))),
                      child: Center(
                          child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          DemoLocalization.of(context)
                              .gettranslatedvalue('Cancer Survivor'),
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              letterSpacing: 1),
                        ),
                      )),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 10, bottom: 40),
              child: Center(
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Authenticate()));
                  },
                  child: Container(
                    height: 70,
                    width: 400,
                    child: Center(
                        child: Text(
                      DemoLocalization.of(context).gettranslatedvalue('others'),
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          letterSpacing: 1),
                    )),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 10,
                    color: Colors.transparent,
                  ),
                  Container(
                    width: 350,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.only(topLeft: Radius.circular(20)),
                        color: Colors.white,
                        image: DecorationImage(
                            image: AssetImage("assets/doctor.gif"),
                            fit: BoxFit.fitHeight)),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
