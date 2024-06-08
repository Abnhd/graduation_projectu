import 'package:flutter/material.dart';
import 'package:sportify_application/model/measurment_list.dart';



class measurment_card extends StatelessWidget {
    final Measurment measurmentt;

  const measurment_card({super.key,required this.measurmentt});

  @override
  Widget build(BuildContext context) {
    return Container(
                    width: 50.0,
                      height: 50.0,
                    
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      color: Colors.grey.withOpacity(0.5),
                      borderRadius:BorderRadius.only(
                        bottomRight: Radius.circular(15.0),
                        topLeft: Radius.circular(15.0),

                      ),
                       ),
                      child: ListTile(title: Text( measurmentt.txt1),trailing: Text(measurmentt.txt2),)
    );
  }
}