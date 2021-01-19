import 'package:flutter/material.dart';

import 'constant.dart';
import 'dots_indicator.dart';
import 'walkthrough.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WalkThrough(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WalkThrough extends StatefulWidget {
  @override
  WalkThroughState createState() => WalkThroughState();
}

class WalkThroughState extends State<WalkThrough> {
  PageController pageController = PageController();

  int currentIndexPage = 0;
  int pageLength;
  var titles = [
    "Discover place near you",
    "Most Delicious Dishes!",
    "Just make an order!"
  ];
  var subTitles = [
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.This is simply text ",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.This is simply text  ",
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry.This is simply text"
  ];

  @override
  void initState() {
    currentIndexPage = 0;
    pageLength = 3;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: PageView(
              controller: pageController,
              children: <Widget>[
                WalkThroughView(textContent: "assets/illustration.svg"),
                WalkThroughView(textContent: "assets/illustration2.svg"),
                WalkThroughView(textContent: "assets/illustration3.svg"),
              ],
              onPageChanged: (value) {
                setState(() => currentIndexPage = value);
              },
            ),
          ),
          Positioned(
            width: MediaQuery.of(context).size.width,
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(titles[currentIndexPage],
                      style: boldTextStyle(size: 20, color: textColorPrimary)),
                  SizedBox(height: 10),
                  Center(
                    child: Text(subTitles[currentIndexPage],
                        style: secondaryTextStyle(
                            size: 16, color: textColorSecondary),
                        textAlign: TextAlign.center),
                  ),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        child:
                            Text("Skip", style: secondaryTextStyle(size: 16)),
                        onTap: () {},
                      ),
                      DotsIndicator(
                          dotsCount: 3,
                          position: currentIndexPage,
                          decorator: DotsDecorator(
                              color: view_color, activeColor: colorPrimary)),
                      InkWell(
                        child: Padding(
                            child: Text("Next",
                                style: primaryTextStyle(color: colorPrimary)),
                            padding: EdgeInsets.all(8)),
                        onTap: () {
                          currentIndexPage = currentIndexPage + 1;
                          if (currentIndexPage >= 3) {
                            currentIndexPage = 0;
                          } else {
                            pageController.animateToPage(currentIndexPage,
                                duration: Duration(milliseconds: 500),
                                curve: Curves.ease);
                            setState(() {});
                          }
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
