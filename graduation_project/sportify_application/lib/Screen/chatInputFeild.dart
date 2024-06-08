import 'package:flutter/material.dart';

class ChatInputFeild extends StatelessWidget {
  const ChatInputFeild({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      color: const Color.fromARGB(255, 207, 204, 204),
      child: Row(
        children: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.photo_camera)
          ),
          IconButton(onPressed:(){},
              icon: Icon(Icons.attach_file_outlined)
          ),
          Expanded(
              child: TextField(
                decoration: InputDecoration.collapsed(
                  hintText: 'write here'
                ),
              )
          ),
          IconButton(onPressed: (){},
              icon: Icon(Icons.send_rounded)
          )
        ],
      ),
    );
  }
}
