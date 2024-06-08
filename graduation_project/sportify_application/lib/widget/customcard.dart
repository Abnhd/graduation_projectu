import 'package:flutter/material.dart';



class customcard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  const Card(
     color:Color.fromARGB(186, 0, 0, 0),

  child: Padding(
    padding: const EdgeInsets.all(10.0),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text('وجبة السابعة صباحا',textAlign: TextAlign.center, style: TextStyle(fontSize:20, fontWeight: FontWeight.bold,color: Color.fromARGB(225, 255, 255, 255))),
        SizedBox(height: 8),
       Text('الأكثار من شرب الحليب',style: TextStyle(color: Color.fromARGB(200, 255, 255, 255)),),
        Text("ثلاث  تمرات",style: TextStyle(color: Color.fromARGB(200, 255, 255, 255))),
       
          ],
        ),
      
    ),
  );

  }
}