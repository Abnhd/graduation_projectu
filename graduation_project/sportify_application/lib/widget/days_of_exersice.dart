import 'package:flutter/material.dart';

class days_of_exersice extends StatelessWidget {
  days_of_exersice({super.key});
  final List<String> items = ['Card 1', 'Card 2', 'Card 3', 'Card 4', 'Card 5'];

  @override
  
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            title: Text(items[index]),
            subtitle: Text('Description of ${items[index]}'),
            leading: Icon(Icons.credit_card),
            onTap: () {
              // Handle card tap event
              print('Tapped on ${items[index]}');
            },
          ),
        );
      },
    );

    
  }
}


 

  