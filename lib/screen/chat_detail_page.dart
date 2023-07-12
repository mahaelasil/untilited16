import 'package:flutter/material.dart';
import 'package:untitled16/models/chat_messege.dart';
import 'package:untitled16/models/send_menu_items.dart';

import '../components/chat_bubble.dart';
enum MessageType{
  sender,
  receiver
}
class ChatDetailPage extends StatefulWidget {
  const ChatDetailPage({Key? key}) : super(key: key);

  @override
  State<ChatDetailPage> createState() => _ChatDetailPageState();
}

class _ChatDetailPageState extends State<ChatDetailPage> {
  List< ChatMessage>chatMessage=[
    ChatMessage(message: "Just to order", type: MessageType.receiver),
    ChatMessage(message: "Okay.for what level of spiciness", type: MessageType.sender),
    ChatMessage(message: "Okay,wait a minute", type: MessageType.receiver),
    ChatMessage(message: "Okay,i'm waiting", type: MessageType.sender)
  ];
  List<SendMenuItems>menuItems=[
    SendMenuItems(text: "Photos@videos", icons: Icons.image, color: Colors.amber),
    SendMenuItems(text: "Document", icons: Icons.insert_drive_file, color: Colors.blue),
    SendMenuItems(text: "Audio", icons: Icons.music_note, color: Colors.orange),
    SendMenuItems(text: "Location", icons: Icons.location_on_rounded, color: Colors.green),
    SendMenuItems(text: "contact", icons: Icons.person, color: Colors.purple),
  ];
  void showModal(){
    showModalBottomSheet(context: context,
        builder: (context){
      return Container(
        height: MediaQuery.of(context).size.height/2,
        color:Colors.red,
        child:Container(
          decoration:const BoxDecoration(
            color:Colors.white,
            borderRadius:BorderRadius.only(topRight:Radius.circular(20),topLeft:Radius.circular(20)),
          ),
          child:Column(
            children: <Widget>[
              const SizedBox(height:16),
              Center(
                child:Container(
                  height:4,
                  width:50,
                  color:Colors.grey,
                ),
              ),
              const SizedBox(height: 10,),
              ListView.builder(itemCount: menuItems.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context,index){
                return Container(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: ListTile(
                    leading: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: menuItems[index].color.shade50,
                      ),
                      height: 50,
                      width: 50,
                      child: Icon(menuItems[index].icons,size: 20,color: menuItems[index].color.shade400,
                      ),
                    ),
                    title: Text(menuItems[index].text),
                  ),
                );
                  },
              ),
            ],
          ),
        ),
      );
        }
        );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children:<Widget> [
          ListView.builder(
            itemCount: chatMessage.length,
              shrinkWrap: true,
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context,index){
            return ChatBubble(
              chatMessage:chatMessage[index],
            );
          }
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              padding: const EdgeInsets.only(left: 16,bottom: 10),
              height: 80,
              width: double.infinity,
              color: Colors.white,
              child: Row(
                children:<Widget> [
                  GestureDetector(
                    onTap: (){
                      showModal();
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: const Icon(Icons.add,color: Colors.white,size: 21,),
                    ),
                  ),
                  const SizedBox(width: 16,),
                  const Expanded(child: TextField(
                    decoration: InputDecoration(
                      hintText: "Type message...",
                      helperStyle: TextStyle(color: Colors.grey),
                      border: InputBorder.none
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              padding: const EdgeInsets.only(right: 30,bottom: 50),
              child: FloatingActionButton(onPressed: (){},
              backgroundColor: Colors.pink,
              elevation: 0,
              child: const Icon(Icons.send,color: Colors.white,),
              ),
            ),
          )
        ],
      ),
    );
  }
}
