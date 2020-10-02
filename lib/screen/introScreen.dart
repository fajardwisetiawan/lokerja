import 'package:flutter/material.dart';
import 'dart:io';
import 'package:loker/intro/data.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

class IntroScreenState extends State<IntroScreen> {
  List<SliderModel> mySLides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 6.0,
      width: isCurrentPage ? 10.0 : 6.0,
      decoration: BoxDecoration(
        color: isCurrentPage ? Color(0xff4E6CCE) : Color(0x774E6CCE),
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F8FD),
      body: Container(
        height: MediaQuery.of(context).size.height - 100,
        child: PageView(
          controller: controller,
          onPageChanged: (index) {
            setState(() {
              slideIndex = index;
            });
          },
          children: <Widget>[
            SlideTile(
              imagePath: mySLides[0].getImageAssetPath(),
              title: mySLides[0].getTitle(),
              desc: mySLides[0].getDesc(),
            ),
            SlideTile(
              imagePath: mySLides[1].getImageAssetPath(),
              title: mySLides[1].getTitle(),
              desc: mySLides[1].getDesc(),
            ),
            SlideTile(
              imagePath: mySLides[2].getImageAssetPath(),
              title: mySLides[2].getTitle(),
              desc: mySLides[2].getDesc(),
            )
          ],
        ),
      ),
      bottomSheet: slideIndex != 2
          ? Container(
              color: Color(0xffF5F8FD),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      controller.animateToPage(2,
                          duration: Duration(milliseconds: 400),
                          curve: Curves.linear);
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      "SKIP",
                      style: TextStyle(
                          color: Color(0xff4E6CCE),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        for (int i = 0; i < 3; i++)
                          i == slideIndex
                              ? _buildPageIndicator(true)
                              : _buildPageIndicator(false),
                      ],
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                      print("this is slideIndex: $slideIndex");
                      controller.animateToPage(slideIndex + 1,
                          duration: Duration(milliseconds: 500),
                          curve: Curves.linear);
                    },
                    splashColor: Colors.blue[50],
                    child: Text(
                      "NEXT",
                      style: TextStyle(
                          color: Color(0xff4E6CCE),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            )
          : InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/homeScreen');
              },
              child: Container(
                height: Platform.isIOS ? 70 : 60,
                color: Color(0xff4E6CCE),
                alignment: Alignment.center,
                child: Text(
                  "GET STARTED NOW",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w600),
                ),
              ),
            ),
    );
  }
}

// ignore: must_be_immutable
class SlideTile extends StatelessWidget {
  String imagePath, title, desc;

  SlideTile({this.imagePath, this.title, this.desc});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            top: 95,
            right: 115,
            child: Image.asset("assets/images/rectangle.png"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              children: [
                GestureDetector(
                  child: Image.asset(
                    "assets/images/bumn.png",
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: MediaQuery.of(context).size.height * 0.1,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image.asset(
                  imagePath,
                  // width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.4,
                ),
                Container(
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff4E6CCE),
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold),
                  ),
                  margin: EdgeInsets.only(top: 20.0),
                ),
                Container(
                  child: Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Color(0xff4E6CCE),
                        fontSize: 25.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w300),
                  ),
                  margin: EdgeInsets.only(top: 20.0),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
