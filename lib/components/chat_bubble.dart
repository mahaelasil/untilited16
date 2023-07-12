// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:untitled16/models/chat_messege.dart';
import 'package:untitled16/screen/chat_detail_page.dart';

class ChatBubble extends StatefulWidget {
   ChatBubble({required this.chatMessage,Key? key}) : super(key: key);
ChatMessage chatMessage;
  @override
  State<ChatBubble> createState() => _ChatBubbleState();
}

class _ChatBubbleState extends State<ChatBubble> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16,right: 16,top: 10,bottom: 10),
      child: Align(
        alignment: (widget.chatMessage.type==MessageType.receiver?Alignment.topLeft:Alignment.topRight),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: (widget.chatMessage.type==MessageType.receiver?Colors.white:Colors.grey),
          ),
          padding: const EdgeInsets.all(16),
          child: Text(widget.chatMessage.message),
        ),
      ),
    );
  }
}
