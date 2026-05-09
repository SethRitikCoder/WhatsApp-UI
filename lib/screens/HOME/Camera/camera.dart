import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp_app/widgets/uihelper.dart';

class CameraScreen extends StatefulWidget {
  const CameraScreen({super.key});

  @override
  State<CameraScreen> createState() => _CameraScreenState();
}

class _CameraScreenState extends State<CameraScreen> {
  File? _selectedimage;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: GestureDetector(
              onTap: () {
                _bottomsheet(context);
              },
              child: CircleAvatar(
                radius: 50,
                backgroundColor: Color.fromRGBO(0, 168, 132, 1),
                backgroundImage: _selectedimage != null
                    ? FileImage(_selectedimage!)
                    : null,
                child: _selectedimage == null
                    ? Image.asset("assets/images/photo-camera.png")
                    : null,
              ),
            ),
          ),
          SizedBox(height: 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  _imageshot(ImageSource.camera);
                },
                child: Text("Open Camera"),
              ),
              SizedBox(width: 25),
              ElevatedButton(
                onPressed: () {
                  _imageshot(ImageSource.gallery);
                },
                child: Text("Open Gallery"),
              ),
            ],
          ),
        ],
      ),
    );
  }

  dynamic _bottomsheet(BuildContext context) {
    return showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      iconSize: 90,
                      onPressed: () async {
                        Navigator.pop(context);
                        await Future.delayed(Duration(milliseconds: 500), () {
                          _imageshot(ImageSource.camera);
                        });
                      },
                      icon: Icon(Icons.camera),
                    ),
                    SizedBox(width: 130),
                    IconButton(
                      iconSize: 90,
                      onPressed: () async {
                        Navigator.pop(context);
                        await Future.delayed(Duration(milliseconds: 500), () {
                          _imageshot(ImageSource.gallery);
                        });
                      },
                      icon: Icon(Icons.image),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  Future<void> _imageshot(ImageSource imagesource) async {
    try {
      final ImagePicker _picker = ImagePicker();
      XFile? _image = await _picker.pickImage(source: imagesource);
      if (_image != null) {
        setState(() {
          _selectedimage = File(_image.path);
        });
      }
    } catch (ex) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Uihelper.customText(
              text: "Please Choose a Image$ex",
              size: 14,
            ),
            duration: Duration(seconds: 4),
            backgroundColor: Colors.green,
          ),
        );
      }
    }
  }
}
