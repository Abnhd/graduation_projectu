import 'package:flutter/material.dart';
import 'package:sportify_application/Screen/chatInputFeild.dart';
import 'package:sportify_application/Screen/chatmessage.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
      backgroundColor:Color.fromARGB(255, 23, 23, 26),
      leading: IconButton(
          onPressed: () {   Navigator.pop(context);},
          style: IconButton.styleFrom(
            shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(15),
            ),
            backgroundColor: Colors.grey.withOpacity(0.5),
            fixedSize: const Size(30, 30),
          ),
          icon: const Icon(Icons.arrow_back),color: Colors.white,),
        
  actions: [Text('كوتش رؤى',style:TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize: 20,),),IconButton(
      icon: Icon(Icons.account_circle,size: 40),
      onPressed: () {}),]
    ),


      body: Column(
        children: [
          Expanded(
              child: ListView(
                children: [
                  ChatMessage(
                    text: "hi coatch",
                    time: "9:30 pm",
                    isSentByMe: true,
                  ),
                  ChatMessage(
                    text: "hi Aisha",
                    time: "9:33 pm",
                    isSentByMe: false,
                  ),
                  ChatMessage(
                    text: "look",
                    time: "9:33 pm",
                    isSentByMe: false,
                    isImage: true,
                  ),

                  ChatMessage(
                    text: "Today",
                    time: "9:33 pm",
                    isSentByMe: true,
                    isDate: true,
                  ),
                  ChatMessage(
                    text: "Wow",
                    time: "12:30 am",
                    isSentByMe: true,
                  ),
                  ChatMessage(
                    text: "what u doing?",
                    time: "12:30 am",
                    isSentByMe: true,
                  ),
                  ChatMessage(
                    text: "nothing , u?",
                    time: "12:33 am",
                    isSentByMe: false,
                  ),
                  ChatMessage(
                    text: "doing my exersise",
                    time: "12:35 am",
                    isSentByMe: true,
                  ),
                  ChatMessage(
                    text: "good , u have to do it very well",
                    time: "12:35 am",
                    isSentByMe: false,
                  ),

                ],
              )
          ),
          ChatInputFeild(),
        ],
      ),
    );
  }
}

