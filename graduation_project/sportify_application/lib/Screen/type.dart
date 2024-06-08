import 'package:flutter/material.dart';
import 'package:sportify_application/Screen/choose_type.dart';
import 'package:sportify_application/Screen/homepage.dart';
import 'package:sportify_application/widget/appbar.dart';


class type extends StatefulWidget {
  const type({super.key});

  @override
  State<type> createState() => _typeState();
}

class _typeState extends State<type> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Container(
        width: double.infinity,
         height: double.infinity,

        decoration: const BoxDecoration(
          image: DecorationImage(
            // Import image in pubspec.yaml first
            image: NetworkImage('lib/asset/2.jpg'),
            // BoxFit.cover scales up the image until it completely covers the screen
            fit: BoxFit.cover,
             ),
             ),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                appbar(),
               Text("استخدام التطبيق",
               
              style: TextStyle(color: Colors.white,
              fontSize: 40,fontWeight: FontWeight.bold),),
            Image.network("lib/asset/1.png",width:400,height: 400,),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: MaterialButton(
             
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                
                minWidth: 300,
                   height: 50,
                color: Colors.grey.withOpacity(0.5),
                onPressed: (){},child: Text("مدرب" ,
              style: TextStyle(color: Colors.white,
              fontSize: 30),),),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 10),
              child: MaterialButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
               
                minWidth: 300,
                height: 50,
                color: Color.fromARGB(255, 23, 23, 26),
                onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>choose_type()));
                },child: Text("مشترك",
              style: TextStyle(color: Colors.white
           ,fontSize: 30),),),
            ),
          
          ],
        ),
      ),
      
    );
     
      

   
    
  }
}