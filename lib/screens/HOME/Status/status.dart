import 'package:flutter/material.dart';
import 'package:whatsapp_app/widgets/uihelper.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
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
    final double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: screenwidth * 0.03),
              Uihelper.customText(
                text: "Status",
                size: 20,
                weight: FontWeight.w700,
                family: "Roboto",
              ),
            ],
          ),
          SizedBox(height: 10),
          ListTile(
            leading: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: CircleAvatar(
                    radius: 23,
                    backgroundImage: NetworkImage(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUWwfmCyK_F44ZDBuN84SdLdQAv6uj0_if2g&s",
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 8,
                    backgroundColor: Color.fromRGBO(0, 168, 132, 1),
                    child: Icon(Icons.add, size: 15, color: Colors.white),
                  ),
                ),
              ],
            ),
            title: Uihelper.customText(
              text: "My Status",
              size: 20,
              weight: FontWeight.w600,
              family: "Roboto",
            ),
            subtitle: Uihelper.customText(
              text: "Tap to add status update",
              size: 14,
              weight: FontWeight.w400,
              family: "Roboto",
            ),
            trailing: Icon(Icons.more_horiz, color: Colors.black),
          ),
          SizedBox(height: 15),
          Row(
            children: [
              SizedBox(width: screenwidth * 0.03),
              Uihelper.customText(
                text: "Recent updates",
                size: 14,
                weight: FontWeight.w600,
                family: "Roboto",
                color: Color.fromRGBO(94, 94, 94, 1),
              ),
            ],
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                      arrycontent[index]["img"].toString(),
                    ),
                  ),
                  title: Uihelper.customText(
                    text: arrycontent[index]["name"],
                    size: 18,
                    color: Colors.black,
                    weight: FontWeight.bold,
                    family: "Roboto",
                  ),
                  subtitle: Uihelper.customText(
                    text: arrycontent[index]["time"].toString(),
                    size: 14,
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
