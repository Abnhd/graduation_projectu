import 'package:flutter/material.dart';
import 'package:sportify_application/Screen/chatInputFeild.dart';

class ChatMessage extends StatelessWidget {
  final String text;
  final String time;
  final bool isSentByMe;
  final bool isDate;
  final bool isImage;
  final bool isUnread;
  const ChatMessage({super.key, required this.text, required this.time, required this.isSentByMe, this.isDate=false, this.isImage=false, this.isUnread=false});

  @override
  Widget build(BuildContext context) {
    if(isDate){
      return Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.yellow[900],
            fontSize: 12.0
          ),
        ),
      );
    }
    else if (isUnread){
      return Center(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.yellow[900],
            fontSize: 12.0
          ),
        ),
      );
    }
    else{
      return Container(
        margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: isSentByMe?MainAxisAlignment.end:MainAxisAlignment.start,
          children: [
            if (!isSentByMe)...[
              CircleAvatar(
                child: Icon(Icons.person),
              ),
              SizedBox(width: 10.0,)
            ],
            Column(
              crossAxisAlignment: isSentByMe?CrossAxisAlignment.end:CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10,horizontal: 14),
                  decoration: BoxDecoration(
                    color: isSentByMe? Colors.yellow[900]:Colors.grey[700],
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: isSentByMe?CrossAxisAlignment.end:CrossAxisAlignment.start,
                    children: [
                      if(isImage)
                        Icon(
                          Icons.picture_in_picture_sharp,
                          size: 120,
                        ),
                      Text(
                        text,
                        style: TextStyle(
                          color :isSentByMe? Colors.white:Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                if (time !=null)
                  Padding(
                      padding: EdgeInsets.only(top:5),
                    child: Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10
                      ),
                    ),
                  ),
                 
              ],
              
            )
          ],
        ),
      );
    }
  }
}
