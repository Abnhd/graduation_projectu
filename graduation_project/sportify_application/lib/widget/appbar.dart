
import 'package:flutter/material.dart';
import 'package:sportify_application/Screen/homepage.dart';

import '../constants.dart';
class appbar extends StatelessWidget {
  const appbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor:Colors.transparent,
      leading: IconButton(
          onPressed: () {  Navigator.pop(context);},
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Colors.grey.withOpacity(0.5),
            fixedSize: const Size(30, 30),
          ),
          icon: const Icon(Icons.arrow_back),color: Colors.white,),
        
 
    );
  }
  }