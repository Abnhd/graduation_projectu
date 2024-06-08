import 'package:flutter/material.dart';
import 'package:sportify_application/model/measurment_list.dart';
import 'package:sportify_application/widget/measurment_card.dart';

class measurment_table extends StatelessWidget {
  const measurment_table({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:SingleChildScrollView(child: 
     Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 30,),
        Text('قياساتك خلال الشهر',style: TextStyle(color: Colors.white,fontSize: 25.0,fontWeight: FontWeight.bold),),
         SizedBox(height: 30,),
      
       GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30,
                  ),
                  itemBuilder: (context, index) => measurment_card(
                    measurmentt:measurmentt [index],
                  ),
                  itemCount: measurmentt.length,
                )
      ],   
     ),
     ),
     
     );
    
    
  }
}