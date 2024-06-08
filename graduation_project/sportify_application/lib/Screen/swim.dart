
import 'package:flutter/material.dart';

class sweming extends StatefulWidget {
  const sweming({super.key});

  @override
  State<sweming> createState() => _sweming_pageState();
}

class _sweming_pageState extends State<sweming> {
  @override
  double pading = 20;
  Color colorss = Colors.blueGrey;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView(
          children: [
            Image.asset(
              "image/swim.jpg",
              fit: BoxFit.fill,
              height: 200,
            ),

            SizedBox(
              height: 10,
            ),

            //here the text
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: pading),
                  child: Text(
                    "المتطلبات",
                    style: TextStyle(
                      fontSize: 20,
                      //fontFamily: AutofillHints.addressState,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),

            //row of APPARATUS
            Padding(
              padding: EdgeInsets.only(left: pading),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: colorss,
                        backgroundImage: AssetImage("image/glass.png"),
                        radius: 35,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "نظارات",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: colorss,
                        backgroundImage: AssetImage("image/shat.png"),
                        radius: 35,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "قبعة",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      CircleAvatar(
                        backgroundColor: colorss,
                        backgroundImage: AssetImage("image/sclothes.png"),
                        radius: 35,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "ملابس",
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            //end of row

            SizedBox(
              height: 30,
            ),

            //here the discribtion
            Center(
                child: Container(
              width: 200,
              color: colorss,
              child: Text(
                "الوصف",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            )),
            //end of discribtion
            SizedBox(
              height: 10,
            ),

            //ttttttttttttext
            Center(
              child: Container(
                width: 300,
                child: Text(
                  "تساهم السباحة في مرونة عضلات الجسم المختلفة، كما تساعد على بناء وتقوية العضلات. تعمل على الحدّ من التوتر النفسي، خاصة إذا تمت ممارستها تحت أشعة الشمس، فذلك يساعد على القضاء على المشاعر السلبية والاكتئاب والحزن. تساهم في حدوث توازن بمعدلات ضغط الدم. تقلل من خطر الإصابة بمرض السكري",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            //end of ttttttttttttttttttt

            SizedBox(
              height: 20,
            ),

            //heeding of timing
            Center(
              child: Container(
                width: 100,
                color: colorss,
                child: Text(
                  "الاوقات",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            //-------------------------------------------------

            //Rows of timing
            Padding(
              padding: EdgeInsets.only(right: pading),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "كل يوم اربعاء",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.calendar_month,
                    size: 40,
                    color: colorss,
                  ),
                ],
              ),
            ),

            //-------------------------------------------------
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: EdgeInsets.only(right: pading),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "الساعة الخامسة",
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.access_time_filled_outlined,
                    size: 40,
                    color: colorss,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
