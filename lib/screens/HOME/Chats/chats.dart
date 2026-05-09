import 'package:flutter/material.dart';
import 'package:whatsapp_app/screens/Chatdetailscreen/chatdetailscreen.dart';

class ChatsScreen extends StatefulWidget {
  const ChatsScreen({super.key});

  @override
  State<ChatsScreen> createState() => _ChatsScreenState();
}

class _ChatsScreenState extends State<ChatsScreen> {
  List arry = [
    {
      "name": "John Doe",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "message": "Hey, how are you?",
      "time": "10:30 AM",
      "count": "1",
    },
    {
      "name": "Jane Smith",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "message": "Let's catch up later.",
      "time": "9:15 AM",
      "count": "3",
    },
    {
      "name": "Michael Johnson",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "message": "Can you send me the files?",
      "time": "Yesterday",
      "count": "4",
    },
    {
      "name": "Emily Davis",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "message": "Had a great day!",
      "time": "Monday",
      "count": "5",
    },
    {
      "name": "David Wilson",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "message": "See you at the meeting.",
      "time": "Sunday",
      "count": "6",
    },
    {
      "name": "John Doe",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "message": "Hey, how are you?",
      "time": "10:30 AM",
      "count": "1",
    },
    {
      "name": "Jane Smith",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "message": "Let's catch up later.",
      "time": "9:15 AM",
      "count": "3",
    },
    {
      "name": "Michael Johnson",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "message": "Can you send me the files?",
      "time": "Yesterday",
      "count": "4",
    },
    {
      "name": "Emily Davis",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "message": "Had a great day!",
      "time": "Monday",
      "count": "5",
    },
    {
      "name": "David Wilson",
      "image":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "message": "See you at the meeting.",
      "time": "Sunday",
      "count": "6",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: arry.length,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ChatDetailScreen(
                    imgurl: arry[index]["image"],
                    name: arry[index]["name"],
                  ),
                ),
              );
            },
            leading: CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage(arry[index]["image"]),
            ),
            title: Text(arry[index]["name"].toString()),
            titleTextStyle: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            subtitle: Text(arry[index]["message"].toString()),
            trailing: Column(
              children: [
                Text(arry[index]["time"].toString()),
                SizedBox(height: 10),
                CircleAvatar(
                  radius: 14,
                  backgroundColor: Color.fromRGBO(0, 128, 105, 1),
                  child: Text(
                    arry[index]["count"].toString(),
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
