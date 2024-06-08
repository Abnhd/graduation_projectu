import 'package:flutter/material.dart';

class notification_card extends StatelessWidget {
  notification_card({super.key});
  final List<String> items = ['sportify','sportify','sportify'];

  @override
  
  Widget build(BuildContext context) {
    return SizedBox(
      height:300,
    
      child:
  
     ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
           color: Colors.black.withOpacity(0.5),
          child: ListTile(
            title: Text(items[index]),
            subtitle: Text('تم تعديل جدول تمارينك خلال الشهر الحالي'),
            leading:IconButton(
      icon: Icon(Icons.close,size: 40),
      onPressed: () {   Navigator.of(context).pop();}),
            onTap: () {
              // Handle card tap event
              print('Tapped on ${items[index]}');
            },
          ),
        );
        
      },
    ),
    );

    
  }
}


 

  