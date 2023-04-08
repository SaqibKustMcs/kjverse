import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class Reading extends StatelessWidget {
  const Reading({Key? key}) : super(key: key);

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
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:  Color(0xff898787).withOpacity(0.30),
                      ),
                      child: ImageIcon(AssetImage("assets/images/backicon.png")),


                    ),
                  ),
                ),
                Text("Proverbs 3 : 12",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),)
                , Text("               "),
              ],
            ),
            SizedBox(height: 50,),


            Container(
              height: MediaQuery.of(context).size.height*0.6,
              width: MediaQuery.of(context).size.width*0.8,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff000000).withOpacity(0.25)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 100,),

                  CircularPercentIndicator(
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
                  SizedBox(height: 20,),

                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Text("""1 My son, do not forget my teaching, but keep my commands in your heart, 2. For they will prolong your life many years and bring you peace and prosperity.""",textAlign: TextAlign.center,style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 14,color: Colors.white),),
                    ),
                  )


                ],
              ),
            ),
            SizedBox(height: 10,),

            Container(
              height: 40,
              width: 50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Center(
                child: Icon(Icons.pause,color: Colors.redAccent,),
              ),
            )
          ],
        ),
      ),
    );
  }
}
