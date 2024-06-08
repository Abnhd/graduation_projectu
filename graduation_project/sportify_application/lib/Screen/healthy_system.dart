import 'package:flutter/material.dart';
import 'package:sportify_application/Screen/days_card_screen.dart';
import 'package:sportify_application/Screen/food_table.dart';
import 'package:sportify_application/Screen/measurment_table.dart';
import 'package:sportify_application/widget/Frostedglass.dart';
import 'package:sportify_application/widget/days_of_exersice.dart';
import 'package:sportify_application/widget/home_search_bar.dart';
import 'package:sportify_application/widget/home_appbar _exersice.dart';



class healthy_system extends StatelessWidget {
  const  healthy_system ({super.key});
  @override
  Widget build(BuildContext context) {
   return  Scaffold(
     body:SingleChildScrollView(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            // Import image in pubspec.yaml first
            image: NetworkImage('data:image/jpeg;base64,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'),
            // BoxFit.cover scales up the image until it completely covers the screen
            fit: BoxFit.cover,
             ),
             ),
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const HomeAppbar_exercise(),
                const SizedBox(height: 20),
                const HomeSearchBar(),
                const SizedBox(height: 70),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>     days_of_exersice (),),
                    );
                  },
                  child:  const FrostedGlassBox(
          // theWidth is the width of the frostedglass
          theWidth: 400.0,
          // theHeight is the height of the frostedglass
          theHeight: 80.0,
          // theChild is the child of the frostedglass
          theChild: Text(
           'التمارين اليومية ',
            style: TextStyle(color: Colors.white54, fontSize: 30.0),
          ), ),
       ),
              
               
          const SizedBox(height: 20),
           GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=> food_table (),),
                    );
                  },
                  child:
          
            const FrostedGlassBox(
          // theWidth is the width of the frostedglass
          theWidth: 400.0,
          // theHeight is the height of the frostedglass
          theHeight: 80.0,
          // theChild is the child of the frostedglass
          theChild: Text(
           'الوجبات اليومية',
            style: TextStyle(color: Colors.white54, fontSize: 30.0),
          ),
        ),),
          const SizedBox(height: 20),
            const FrostedGlassBox(
          // theWidth is the width of the frostedglass
          theWidth: 400.0,
          // theHeight is the height of the frostedglass
          theHeight: 80.0,
          // theChild is the child of the frostedglass
          theChild: Text(
          "التمارين المنزلية",
           style: TextStyle(color: Colors.white54, fontSize: 30.0),
          ),
        ),
          const SizedBox(height: 20),
            GestureDetector(
                  onTap: () {
                    Navigator.push(context,MaterialPageRoute(builder:(context)=>  measurment_table (),),
                    );
                  },
           child:
            const FrostedGlassBox(
          // theWidth is the width of the frostedglass
          theWidth: 400.0,
          // theHeight is the height of the frostedglass
          theHeight: 80.0,
          // theChild is the child of the frostedglass
          theChild: Text(
           'قياساتك',
            style: TextStyle(color: Colors.white54, fontSize: 30.0),
          ),
        ),
         
         ),
       ]
        
      ),
              
     ),
   ),
   );
   
     
             
  }
  }
    