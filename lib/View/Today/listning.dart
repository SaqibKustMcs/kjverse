import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
class Listening extends StatefulWidget {
  const Listening({Key? key}) : super(key: key);

  @override
  State<Listening> createState() => _ListeningState();
}

class _ListeningState extends State<Listening> {

  late FlutterTts flutterTts=FlutterTts();
  String? language;
  String? engine;
  double volume = 0.5;
  double pitch = 1.0;
  double rate = 0.5;
  bool isCurrentLanguageInstalled = false;
  String? _newVoiceText="mend ko galiaa na kadwaa";


  int? _inputLength;
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      backgroundColor: Color(0xff424242),


      body: SafeArea(
        child: SingleChildScrollView(
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
                        height: 30.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color:  Color(0xff898787).withOpacity(0.30),
                        ),
                        child: ImageIcon(AssetImage("assets/images/backicon.png")),


                      ),
                    ),
                  ),
                  Text("Proverbs 3 : 1-2",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 20,color: Colors.white),)
                  , Text("               "),
                ],
              ),
              SizedBox(height: 30.h,),


              Container(
                height:550.h,
                width: MediaQuery.of(context).size.width*0.8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff000000).withOpacity(0.25)
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(height: 100.h,),

                    CircularPercentIndicator(
                      radius: 25.0,
                      lineWidth: 3.0,
                      percent: 0.7,
                      center: Icon(Icons.volume_up,color: Colors.white,),
                      progressColor: Colors.greenAccent,

                    ),
                    SizedBox(height: 20,),


                    Text("Listening...",style: GoogleFonts.poppins(fontWeight: FontWeight.w600,fontSize: 14,color: Colors.white),)


                  ],
                ),
              ),
              SizedBox(height: 10,),

              InkWell(
                onTap: (){
                  _speak("hy saqib");
                },
                child: Container(
                  height: 40.h,
                  width: 50.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(
                    child: Icon(Icons.pause,color: Colors.redAccent,),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Future _speak(String text) async {
    print("sssss");
    await flutterTts.setLanguage("en-US");
    // await flutterTts.setVolume(volume);
    // await flutterTts.setSpeechRate(rate);
     await flutterTts.setPitch(1);
     await flutterTts.speak(text);


    if (_newVoiceText != null) {
      print("saqib");
      if (_newVoiceText!.isNotEmpty) {
        await flutterTts.speak(_newVoiceText!);
      }
    }
  }

}
