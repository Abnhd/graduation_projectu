import 'package:flutter/material.dart';
import 'package:sportify_application/Screen/choose_type.dart';
import 'package:sportify_application/Screen/data_user.dart';
import 'package:sportify_application/Screen/homepage.dart';
import 'package:sportify_application/Screen/login_user.dart';
import 'package:sportify_application/Screen/type.dart';
import 'package:sportify_application/widget/appbar.dart';


class choose_type extends StatefulWidget {
  const choose_type({super.key});

  @override
  State<choose_type> createState() => _typeState();
}

class _typeState extends State<choose_type> {
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
            image: NetworkImage('lib/asset/4.jpg'),
            // BoxFit.cover scales up the image until it completely covers the screen
            fit: BoxFit.cover,
             ),
             ),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
          children: [
                appbar(),
                SizedBox(height: 100.0,),
               Text('مرحبا بك في تطبيقنا يامشترك',
               
              style: TextStyle(color: Colors.white,
              fontSize:30,fontWeight: FontWeight.bold),),
              SizedBox(height: 300.0),

            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: MaterialButton(
             
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                ),
                
                minWidth: 300,
                   height: 50,
                color: Colors.grey.withOpacity(0.5),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>data_user()));
                },child: Text("أنا مستعدة للأنضمام" ,
              style: TextStyle(color: Colors.white,
              fontSize: 20),),),
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
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>login_user()));
                },child: Text("لدي حساب بالفعل",
              style: TextStyle(color: Colors.white
           ,fontSize: 20),),),
            ),
          
          ],
        ),
      ),
      
    );
     
      

   
    
  }
}