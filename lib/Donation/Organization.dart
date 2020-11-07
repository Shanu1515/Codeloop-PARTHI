import 'package:flutter/material.dart';
import 'package:parthi/Donation/payment.dart';

class Organization extends StatefulWidget {
  @override
  _OrganizationState createState() => _OrganizationState();
}

class _OrganizationState extends State<Organization> {
  createBrightPink(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/bp.jpg"),
                          fit: BoxFit.fitWidth)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "With a focus on health rather than cancer, Bright Pink inspires women to make behavior changes that can greatly improve their lives. Through innovative digital tools and constituent-centric marketing, we engage women in educational experiences to help them understand their risk and personalize their prevention plan. We leverage strategic media and brand partnerships to deliver these programs to women where they are, on their terms, and in their language.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        });
  }

  createwom(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/wi.jpg"),
                          fit: BoxFit.fitWidth)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Tata Memorial Hospital (WCl-TMH) is a non profit NGO led by, Dir. Tata Memorial Center. Dr. R.A. Badwe (President), Mrs. Devieka Bhojwani (Vice-President) and Dr. Sudeep Gupta (General Secretary) along with other cancer physicians & surgeons and volunteers. The Initiative's core activity comprises material support of socially and economically disadvantaged women who are diagnosed to have breast and gynecological cancers.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        });
  }

  createpink(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/pk.jpg"),
                          fit: BoxFit.fitWidth)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "The Pink Initiative is a Mumbai based NGO working towards generating awareness about breast cancer in the lay man. Our Mission is just one - and a very simple one too - we want women to be cured of breast cancer, God forbid, if they do develop it.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        });
  }

  createSJ(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/sj.jpg"),
                          fit: BoxFit.fitWidth)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "The Sanjeevani Story. A non-profit organization, Sanjeevani - Life Beyond Cancer, is an award-winning registered Public Trust devoted to enriching the lives of cancer patients and raising the bar of cancer care in India. Ruby Ahluwalia, a serving senior bureaucrat, was diagnosed with Triple Negative (Stage 3) Breast Cancer in 2009. The emotional and physical pain, as well as the financial stress of battling cancer, prompted Ruby to begin a new chapter in her own Life ",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        });
  }

  createLBBC(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/lb.png"),
                          fit: BoxFit.fitWidth)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Living Beyond Breast Cancer-Living Beyond Breast Cancer (LBBC) was founded in 1991 by Marisa C. Weiss, MD, a radiation oncologist, who started the charity from her home with the support of local volunteers.In recent years, LBBC has expanded that to help women (and men) across the complete spectrum of diagnosis, treatment, recovery, and survival.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        });
  }

  createBCRF(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Column(
              children: [
                Container(
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                          image: AssetImage("assets/bc.png"),
                          fit: BoxFit.fitWidth)),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Evelyn Lauder, a breast cancer survivor and senior corporate vice president of The Estee Lauder Companies, founded the Breast Cancer Research Foundation (BCRF) to help fund research and raise public awareness. Lauder is also the co-creator of the original pink ribbon launched in 1992 with Alexandra Penney, former editor-in-chief of Self magazine.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        elevation: 0,
        title: Center(
          child: Text(
            "ORGANIZATIONS",
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 7,
                fontSize: 20,
                fontWeight: FontWeight.w400),
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[900],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                width: 440,
                height: 200,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(60, 0, 60, 0),
                    child: Text("KINDLY MAKE YOUR CHOICE",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            letterSpacing: 4,
                            fontSize: 40)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "INDIA BASED ORGANIZATIONS",
                style: TextStyle(fontSize: 17, letterSpacing: 1),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 440,
                decoration: BoxDecoration(
                    color: Color(0xFFFFC0CB),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/sj.jpg"),
                              fit: BoxFit.fitWidth)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Sanjeevani",
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  createSJ(context);
                                },
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "INFO",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyApp()),
                                  );
                                },
                                child: Container(
                                  color: Colors.blue,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "DONATE NOW",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 440,
                decoration: BoxDecoration(
                    color: Color(0xFFFFC0CB),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/pk.jpg"),
                              fit: BoxFit.fitWidth)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "The Pink Initiatives",
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  createpink(context);
                                },
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "INFO",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyApp()),
                                  );
                                },
                                child: Container(
                                  color: Colors.blue,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "DONATE NOW",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 440,
                decoration: BoxDecoration(
                    color: Color(0xFFFFC0CB),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/wi.jpg"),
                              fit: BoxFit.fitWidth)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Women's Cancer Initiatives",
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  createwom(context);
                                },
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "INFO",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyApp()),
                                  );
                                },
                                child: Container(
                                  color: Colors.blue,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "DONATE NOW",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "USA BASED ORGANIZATIONS",
                style: TextStyle(fontSize: 17, letterSpacing: 1),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 440,
                decoration: BoxDecoration(
                    color: Color(0xFFFFC0CB),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/bp.jpg"),
                              fit: BoxFit.fitWidth)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Bright Pink",
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  createBrightPink(context);
                                },
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "INFO",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyApp()),
                                  );
                                },
                                child: Container(
                                  color: Colors.blue,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "DONATE NOW",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 440,
                decoration: BoxDecoration(
                    color: Color(0xFFFFC0CB),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/bc.png"),
                              fit: BoxFit.fitWidth)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Breast Cancer Research ",
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Foundation",
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "(BCRF)",
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  createBCRF(context);
                                },
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "INFO",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyApp()),
                                  );
                                },
                                child: Container(
                                  color: Colors.blue,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "DONATE NOW",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 150,
                width: 440,
                decoration: BoxDecoration(
                    color: Color(0xFFFFC0CB),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          image: DecorationImage(
                              image: AssetImage("assets/lb.png"),
                              fit: BoxFit.fitWidth)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Living Beyond Breast",
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "Cancer",
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 0,
                              fontWeight: FontWeight.w800),
                        ),
                        Text(
                          "(LBBC)",
                          style: TextStyle(
                              fontSize: 15,
                              letterSpacing: 2,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  createLBBC(context);
                                },
                                child: Container(
                                  color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "INFO",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => MyApp()),
                                  );
                                },
                                child: Container(
                                  color: Colors.blue,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: Text(
                                      "DONATE NOW",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  "PARTHI",
                  style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 20,
                      fontSize: 25,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(
                height: 40,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
