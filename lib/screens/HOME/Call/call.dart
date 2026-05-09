import 'package:flutter/material.dart';
import 'package:whatsapp_app/widgets/uihelper.dart';

class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  List arrycontent = [
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Mickel",
      "time": "7 minutes ago",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Nishant",
      "time": "9 minutes ago",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Shyam",
      "time": "1 hr ago",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Amit",
      "time": "2 hr ago",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Noor",
      "time": "3 hr ago",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Vishal",
      "time": "3 hr ago",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Lalmani",
      "time": "9:55 am",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              SizedBox(width: 10),
              Uihelper.customText(
                text: "Recent",
                size: 20,
                weight: FontWeight.bold,
                family: "Roboto",
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      arrycontent[index]["img"].toString(),
                    ),
                  ),
                  title: Uihelper.customText(
                    text: arrycontent[index]["name"].toString(),
                    size: 20,
                    weight: FontWeight.bold,
                  ),
                  subtitle: Uihelper.customText(
                    text: arrycontent[index]["time"],
                    size: 14,
                  ),
                  trailing: Icon(
                    Icons.call,
                    color: Color.fromRGBO(0, 168, 132, 1),
                  ),
                );
              },
              itemCount: arrycontent.length,
            ),
          ),
        ],
      ),
    );
  }
}
