import 'package:flutter/material.dart';
import 'package:whatsapp_app/widgets/uihelper.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List arrycontent = [
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Mickel",
      "status": "if you is not you are not",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Nishant",
      "status": "Life is a race",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Shyam",
      "status": "Love is a beautiful thing",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Amit",
      "status": "You only live once",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Noor",
      "status": "be yourself",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Vishal",
      "status": "Believe in yourself",
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSyW1LFVLrTeSynKd6fZW2JFbbIwM3-jBJilg&s",
      "name": "Lalmani",
      "status": "Busy",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 160,
        leading: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.arrow_back),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Uihelper.customText(
                  text: "Select contacts",
                  size: 12,
                  weight: FontWeight.w500,
                  family: "Inter",
                  color: Colors.white,
                ),
                Uihelper.customText(
                  text: "1004 contacts",
                  size: 10,
                  weight: FontWeight.normal,
                  family: "Inter",
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.search, color: Colors.white),
              ),
              SizedBox(width: 10),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert, color: Colors.white),
              ),
            ],
          ),
        ],
        toolbarHeight: 50,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromRGBO(0, 168, 132, 1),
              radius: 20,
              child: Icon(Icons.group_add_rounded, color: Colors.white),
            ),
            title: Uihelper.customText(
              text: "New group",
              size: 16,
              weight: FontWeight.bold,
              family: "Inter",
            ),
            tileColor: Colors.white,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromRGBO(0, 168, 132, 1),
              radius: 20,
              child: Icon(Icons.person_add_alt, color: Colors.white),
            ),
            title: Uihelper.customText(
              text: "New contact",
              size: 16,
              weight: FontWeight.bold,
              family: "Inter",
            ),
            tileColor: Colors.white,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Color.fromRGBO(0, 168, 132, 1),
              radius: 20,
              child: Icon(Icons.people_rounded, color: Colors.white),
            ),
            title: Uihelper.customText(
              text: "New Community",
              size: 16,
              weight: FontWeight.bold,
              family: "Inter",
            ),
            tileColor: Colors.white,
          ),
          SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Uihelper.customText(
              text: "Contacts on WhatsApp",
              size: 12,
              weight: FontWeight.w500,
              family: "Inter",
              color: Color.fromRGBO(94, 94, 94, 1),
            ),
          ),
          SizedBox(height: 5),
          Expanded(child: cont()),
        ],
      ),
    );
  }

  dynamic _contactlist() {
    return ListView.builder(
      itemCount: arrycontent.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: CircleAvatar(
            radius: 17,
            backgroundImage: NetworkImage(arrycontent[index]["img"].toString()),
          ),
          title: Uihelper.customText(
            text: arrycontent[index]["name"].toString(),
            size: 16,
            weight: FontWeight.bold,
          ),
          subtitle: Uihelper.customText(
            text: arrycontent[index]["status"],
            size: 14,
          ),
        );
      },
    );
  }

  dynamic cont() {
    return _contactlist();
  }
}
