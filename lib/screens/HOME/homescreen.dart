import 'package:flutter/material.dart';
import 'package:whatsapp_app/screens/HOME/Call/call.dart';
import 'package:whatsapp_app/screens/HOME/Camera/camera.dart';
import 'package:whatsapp_app/screens/HOME/Chats/chats.dart';
import 'package:whatsapp_app/screens/HOME/Contact/contact.dart';
import 'package:whatsapp_app/screens/HOME/Status/status.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => _MyHomeScreenState();
}

class _MyHomeScreenState extends State<MyHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text(
            "WhatsApp",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "Roboto",
              fontWeight: FontWeight.w700,
            ),
          ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
            indicatorColor: Colors.white,
          ),
          toolbarHeight: 60.0,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.search_outlined, color: Colors.white),
            ),
          ],
        ),
        body: TabBarView(
          children: [
            CameraScreen(),
            ChatsScreen(),
            StatusScreen(),
            CallScreen(),
          ],
        ),
        floatingActionButton: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ContactScreen()),
            );
          },
          child: CircleAvatar(
            radius: 24,
            backgroundColor: Color.fromRGBO(0, 168, 132, 1),
            child: Image.asset("assets/images/mode.png"),
          ),
        ),
      ),
    );
  }
}
