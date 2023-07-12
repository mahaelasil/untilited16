// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:untitled16/core/screen.dart';

class ChatUsersList extends StatefulWidget {
   ChatUsersList({super.key,  required this.text,required this.secondaryText,required this.image,required this.time,required this.isMessageRaed});
String text;
String secondaryText;
String image;
String time;
bool isMessageRaed;
  @override
  State<ChatUsersList> createState() => _ChatUsersListState();
}

class _ChatUsersListState extends State<ChatUsersList> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
      Navigator.pushNamedAndRemoveUntil(
        context, chatDetailPage, (route) => false,
      );},
    child: Container(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
      child: Row(
        children:<Widget> [
          Expanded(child: Row(
            children:<Widget> [
              CircleAvatar(
                backgroundImage: AssetImage(widget.image),
                maxRadius: 30,
              ),
              const SizedBox(width: 16,),
              Expanded(child: Container(
                color: Colors.transparent,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.text),
                    const SizedBox(height: 6,),
                    Text(widget.secondaryText,style: const TextStyle(fontSize: 14,color: Colors.grey),),
                  ],
                ),
              ),
              ),
            ],
          ),
          ),
          Text(widget.time,style: TextStyle(fontSize: 12,color: widget.isMessageRaed?Colors.pink:Colors.grey),)
        ],
      ),
    ),

    );
  }
  }

