import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_app/widgets/uihelper.dart';
import 'dart:io';

class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({super.key});

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  File? _selectedImage;
  @override
  Widget build(BuildContext context) {
    double screenheight = MediaQuery.of(context).size.height;
    double screenwidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: screenheight * 0.07),

            Uihelper.customText(
              text: "Profile info",
              size: 18,
              family: "Inter",
              weight: FontWeight.w700,
              color: Color.fromRGBO(0, 168, 132, 1),
            ),
            SizedBox(height: screenheight * 0.07),
            Uihelper.customText(
              text: "Please provide your name and an optional",
              size: 14,
              weight: FontWeight.w400,
              family: "Roboto",
            ),
            SizedBox(height: 2),
            Uihelper.customText(
              text: "profile photo",
              size: 14,
              weight: FontWeight.w400,
              family: "Roboto",
            ),
            SizedBox(height: screenheight * 0.06),
            GestureDetector(
              onTap: () {
                _bottomsheet(context);
              },
              child: CircleAvatar(
                radius: screenwidth * 0.14,
                backgroundColor: Color.fromRGBO(217, 217, 217, 0.54),
                backgroundImage: _selectedImage != null
                    ? FileImage(_selectedImage!)
                    : null,
                child: _selectedImage == null
                    ? Image.asset("assets/images/photo-camera.png")
                    : null,
              ),
            ),
            SizedBox(height: screenheight * 0.07),

            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  // height:40,
                  width: screenwidth * 0.7,
                  child: TextField(
                    decoration: InputDecoration(
                      isDense: true,
                      contentPadding: EdgeInsets.only(bottom: 8),
                      hintText: "  Type your name here",
                      hintStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: "Roboto",
                        fontWeight: FontWeight.w400,
                      ),
                      border: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 168, 132, 1),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 168, 132, 1),
                        ),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color.fromRGBO(0, 168, 132, 1),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: screenwidth * 0.04),
                Image.asset(
                  "assets/images/happy-face.png",
                  height: 40,
                  width: 40,
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Uihelper.custombutton(
        buttonname: "Next",
        callback: () {

           
        
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

  dynamic _bottomsheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: 300,

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      _imagepick(ImageSource.camera);
                    },
                    icon: Icon(Icons.camera_alt, size: 80, color: Colors.grey),
                  ),
                  IconButton(
                    onPressed: () {
                      _imagepick(ImageSource.gallery);
                    },
                    icon: Icon(Icons.image, size: 80, color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _imagepick(ImageSource imagesource) async {
    try{ final ImagePicker picker = ImagePicker();
    final XFile? image = await picker.pickImage(source: imagesource);
    if (image != null) {
      setState(() {
        _selectedImage = File(image.path);
      });
      if(mounted){  Navigator.pop(context);}
    
    }}
    catch(e){
      if(mounted){
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Failed to pick image: $e"),backgroundColor: Colors.red,duration: Duration(seconds: 3),),
      );
    }}
   
  }
}
