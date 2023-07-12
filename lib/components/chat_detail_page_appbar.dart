import 'package:flutter/material.dart';

class ChatDetailPageAppBar extends StatelessWidget {
   const ChatDetailPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      flexibleSpace: SafeArea(
          child: Container(
            padding: const EdgeInsets.only(right: 16),
            child: Row(
              children: <Widget>[
                IconButton(onPressed: () {
                  Navigator.pop(context);
                },
                  icon: const Icon(Icons.arrow_back, color: Colors.black,),
                ),
                const SizedBox(width: 2,),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/Photo Profile (5).png"),
                  maxRadius: 20,
                ),
                const SizedBox(width: 12,),
                Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Text("Dianne Russell",
                      style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(height: 6,),
                    Text("Online",
                      style: TextStyle(color: Colors.green, fontSize: 12),),
                  ],
                ),
                ),
                const Icon(Icons.more_vert, color: Colors.grey,),
              ],
            ),
          )),
    );
  }

  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
