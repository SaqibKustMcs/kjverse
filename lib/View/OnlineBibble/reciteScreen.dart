import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../Today/reading.dart';

class ReciteScreen extends StatelessWidget {
  const ReciteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff424242),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xff898787).withOpacity(0.30),
                      ),
                      child:
                          ImageIcon(AssetImage("assets/images/backicon.png")),
                    ),
                  ),
                ),
                Text(
                  "Proverbs 3 : 1-2",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      color: Colors.white),
                ),
                Text("               "),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                    height: 50,
                    width: 154,
                    decoration: BoxDecoration(
                        color: Color(0xff000000).withOpacity(0.25),
                        borderRadius: BorderRadius.circular(10)),
                    child: Center(
                        child: Text(
                      "Recite",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600,
                          fontSize: 14,
                          color: Colors.white),
                    ))),
                Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 48.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Color(0xffFF2600),
                                  Color(0xffFFB301),
                                ])),
                        child: Icon(
                          Icons.people_alt,
                          color: Colors.white,
                        ),
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircularPercentIndicator(
                  radius: 25.0,
                  lineWidth: 3.0,
                  percent: 1.0,
                  center: Icon(
                    Icons.volume_up,
                    color: Colors.white,
                  ),
                  progressColor: Colors.greenAccent,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 2,
                    width: 50,
                    color: Colors.brown,
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Reading()));
                  },
                  child: CircularPercentIndicator(
                    radius: 25.0,
                    lineWidth: 3.0,
                    percent: 0.80,
                    center: Icon(
                      Icons.keyboard_voice_sharp,
                      color: Colors.white,
                    ),
                    linearGradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Color(0xffFF2600),
                          Color(0xffFFB301),
                        ]),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
