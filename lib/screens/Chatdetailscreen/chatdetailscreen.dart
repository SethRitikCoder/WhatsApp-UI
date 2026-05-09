import 'package:flutter/material.dart';
import 'package:whatsapp_app/widgets/uihelper.dart';

class ChatDetailScreen extends StatefulWidget {
  final String imgurl;
  final String name;
  const ChatDetailScreen({super.key, required this.imgurl, required this.name});

  @override
  State<ChatDetailScreen> createState() => _ChatDetailScreenState();
}

class _ChatDetailScreenState extends State<ChatDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 168, 132, 1),
        leadingWidth: 120,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),

              CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(widget.imgurl),
              ),
            ],
          ),
        ),
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Uihelper.customText(
              text: widget.name,
              size: 19,
              weight: FontWeight.w500,
              family: "Roboto",
              color: Colors.white,
            ),
            SizedBox(height: 5),
            Uihelper.customText(text: "Online", size: 13, color: Colors.white),
          ],
        ),
        toolbarHeight: 60,
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.call, color: Colors.white),
              SizedBox(width: 18),
              Icon(Icons.video_call_sharp, color: Colors.white),
              SizedBox(width: 18),
              Icon(Icons.more_vert),
            ],
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(
            bottom: 10,
            child: TextField(
              decoration: InputDecoration(
                hintText: "Type a message",
                contentPadding: EdgeInsets.only(left: 20, bottom: 10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
