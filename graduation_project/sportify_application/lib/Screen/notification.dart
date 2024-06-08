import 'package:flutter/material.dart';
import 'package:sportify_application/widget/appbar.dart';
import 'package:sportify_application/widget/notification_card.dart';
import 'package:sportify_application/widget/notification_card.dart';


class notification extends StatelessWidget {
  const notification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Container(
        width: double.infinity,
         height: double.infinity,
        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(colors: [Colors.grey.withOpacity(0.5),Colors.red.withOpacity(0.5)],
                    begin:Alignment.topLeft,
                    end: Alignment.bottomRight),
                    
                  ),
           child:
     
          Column(
            children: [
              appbar(),
              SizedBox(height: 50),
              notification_card(),
            ]
          ),
       ),
    );
  }
  }