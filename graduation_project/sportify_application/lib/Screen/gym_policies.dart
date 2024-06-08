import 'package:flutter/material.dart';
import 'package:sportify_application/widget/appbar.dart';

class gym_policies extends StatelessWidget {
  const gym_policies({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Container(
        width: double.infinity,
         height: double.infinity,
         padding: EdgeInsets.all(18.0),

        decoration: const BoxDecoration(
          image: DecorationImage(
            // Import image in pubspec.yaml first
            image: NetworkImage('lib/asset/2.jpg'),
            // BoxFit.cover scales up the image until it completely covers the screen
            fit: BoxFit.cover,
             ),
             ),
             child:
             Column(
                   textDirection: TextDirection.rtl,
                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                   crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                appbar(),
                   SizedBox(height:30),
                  Text(
                  "أهلا صديق النادي",
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    


                  ),
                ),
                SizedBox(height:20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children: [
                  SizedBox(width: 250),
                
                
                  
                  Text(" :اليك بعض القوانين",
                  textAlign: TextAlign.right,
                  textDirection: TextDirection.rtl,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    backgroundColor: Colors.black
                  ))

                ],
                ),
                SizedBox(height: 15),
                Text(".لا يسمح برد اي مبلغ للمشترك بعد توقيع العقد لاي عذر كان -",
                
                
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
                textAlign: TextAlign.right,
                ),
                Text(  " .لا يقبل أي عذر غياب للمشترك ولا يتم تعويضه بأيام -",
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
                textAlign: TextAlign.justify,
                ),
                Text(".لا يسمح لأي لاعب دخول النادي بعد انتهاء اشتراكه بيومين-",
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
                textAlign: TextAlign.justify,
                ),
                Text(".في باقات الشهور / ٦ شهور / سنة يجب أعلام النادي بوقت تجميد -",
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
                textAlign: TextAlign.justify,
                ),
                Text(".لا يوجد فترة تجميد أيام في اشتراكات الشهر الواحد-",
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
                textAlign: TextAlign.justify,
                ),
                Text(".يجب احضار كرت النادي يوميا لتجنب تأخيرك على التمرين -",
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
                textAlign: TextAlign.justify,
                ),
                Text(".منع اصطحاب المرافقين ( أطفال / شباب ) للنادي في فترة التمرين -",
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
                textAlign: TextAlign.justify,
                ),
                Text(".لا يسمح باشتراك في النادي الا بعد دفع مبلغ الاشتراك كامل-",
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
                textAlign: TextAlign.justify,
                ),
                Text(".يجب احضار جزمه رياضيه للتمرين واخذ كامل اغراضك عندالمغادرة-",
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
                textAlign: TextAlign.justify,
                ),
                Text(".النادي غير مسؤول عن فقدان اي أغراض تخص الاعب أو الزوار-",
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
                textAlign: TextAlign.justify,
                ),
                 Text(". لا يحق له التمرين في فترة التجميد لاي سبب كان -",
                style: TextStyle(fontSize: 15,
                fontWeight: FontWeight.w300,
                color: Colors.white),
                textAlign: TextAlign.justify,
                ),


            
              ],
             ),
               
            
          
           
    ),
    );
        
      

    
    
  }
}