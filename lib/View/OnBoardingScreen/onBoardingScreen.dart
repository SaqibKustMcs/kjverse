import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:kjverse/View/AuthScreens/hearUs.dart';

class ModelClass {
  final String image;
  final String title;
  final String subtitle;

  ModelClass(
      {required this.image, required this.title, required this.subtitle});
}

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<ModelClass> myModel = [
    ModelClass(
        image: "assets/images/intro1.png",
        title: "Boost your Bible Memorization ",
        subtitle: "in 1 minute a day   "),
    ModelClass(
      image: "assets/images/intro2.png",
      title: "Excel in your Bible ",
      subtitle: "reading and studies",
    ),
    ModelClass(
      image: "assets/images/splash1.png",
      title: "Keep your brain ",
      subtitle: "Fit and healthy",
    )
  ];

  late int _current=0;

  // List images=[
  @override
  Widget build(BuildContext context) {
    double currentIndexPage;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: CarouselSlider(
                options: CarouselOptions(
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                      print("${_current}");
                    });
                  },
                  aspectRatio: 2,
                  viewportFraction: 1,
                  height: MediaQuery.of(context).size.height * 0.8,
                ),
                items: myModel.map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                          width: double.infinity,
                          padding: EdgeInsets.zero,
                          decoration: BoxDecoration(
                              color: Color(0xff424242),
                              image: DecorationImage(
                                  image: AssetImage("${i.image}"),
                                  fit: BoxFit.fill)),
                          child: Padding(
                            padding: const EdgeInsets.all(18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 60,
                                ),
                                Row(
                                  children: [
                                    SizedBox(
                                      width: 20,
                                    ),
                                    Container(
                                      height: 150,
                                      width: 150,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                "assets/images/splash.png"),
                                          )),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: 220,
                                ),
                                Row(
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.7,
                                        child: Text(
                                          i.title.toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 30),
                                        ))
                                  ],
                                ),
                                Row(
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.8,
                                        child: Text(
                                          i.subtitle.toString(),
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w800,
                                              fontSize: 25),
                                        ))
                                  ],
                                )
                              ],
                            ),
                          ));
                    },
                  );
                }).toList(),
              ),
            ),

            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Color(0xff424242)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DotsIndicator(
                    dotsCount: 3,
                    position: _current.toDouble(),
                    decorator: DotsDecorator(
                      size: const Size.square(10.0),
                      color: Colors.grey,
                      activeSize: const Size(20.0, 10.0),
                      activeColor: Colors.yellow,
                      activeShape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                    ),
                  ),
                  SizedBox(height: 20,),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HearUs()));
                    },
                    child: Container(
                      height: 50,
                      width: 327,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "Get Started",
                          style: TextStyle(
                              color: Colors.yellow,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an Account? ",
                        style: TextStyle(color: Colors.white),
                      ),
                      InkWell(
                        onTap: () {
                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                        },
                        child: Text(
                          "sign in",
                          style: TextStyle(color: Colors.yellow),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
