import 'package:flutter/material.dart';
import 'package:sportify_application/Screen/swim.dart';
import 'package:sportify_application/model/sport_list.dart';

class list_of_sports extends StatelessWidget {
  const list_of_sports({super.key});

  @override
  Widget build(BuildContext context) {
    return
     Container(
      height:150,
      child:ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: sport.length,
        separatorBuilder: (context,_)=>SizedBox(width: 12),
        itemBuilder: (context, index) =>buildCard(sport: sport[index]) ,
      ),
      
    );
    
  }
}
Widget buildCard({required Sport sport,
})
=>Container(
  width: 200,
  child:Column(
    children: [
      Expanded(
      child:AspectRatio(aspectRatio: 4/3,
      child:ClipRRect(borderRadius: BorderRadius.circular(20),
       child:Material(
        child:Ink.image(
          image:NetworkImage(sport.image),
          fit: BoxFit.cover,
          
         
          ),) ),
         )
      ),
       const SizedBox(height: 4),
       Text(sport.name,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),)
      

    ],
  )
 
);

mixin context {
}