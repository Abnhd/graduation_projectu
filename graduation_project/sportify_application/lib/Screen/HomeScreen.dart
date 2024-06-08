import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:sportify_application/Screen/ChatScreen.dart';
import 'package:sportify_application/Screen/chatInputFeild.dart';
import 'package:sportify_application/Screen/chatmessage.dart';
import 'package:sportify_application/Screen/healthy_system.dart';
import 'package:sportify_application/Screen/homepage.dart';
import 'package:sportify_application/Screen/profile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<HomeScreen> {
  int Index=0;
  final pages= const[
    homepage(),
ChatScreen(),

  healthy_system(),
 profile(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[Index],
      backgroundColor:Colors.black,
      bottomNavigationBar: CurvedNavigationBar(
        index: Index,
        onTap: (Index)=>setState(()=>this.Index=Index),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        color: Colors.grey.withOpacity(0.5),
        animationDuration: Duration(microseconds: 3000),
        
        items:[
          Icon(Icons.home ,color: Colors.white),
           Icon(Icons.chat,color: Colors.white),
            Icon(Icons.fitness_center_sharp,color: Colors.white),
             Icon(Icons.person,color: Colors.white),

        ]
      ),

    );
  }
}