import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class PostSales extends StatefulWidget {
  const PostSales({Key? key}) : super(key: key);

  @override
  State<PostSales> createState() => _PostSalesState();
}

class _PostSalesState extends State<PostSales> {
  File? _selectedImage;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            padding: EdgeInsets.all(15),
            child: Column(
              children: [
                GestureDetector(
                  onTap:  pickImageFromGallery,
                  onLongPress: pickImageFromCamera,

                  child: Container(
                    height: 300,
                    width: 400,
                    padding: EdgeInsets.all(20),
                    color: Colors.grey,
                    child: _selectedImage != null
                        ? Image.file(
                      _selectedImage!,
                      fit: BoxFit.fill,
                    )
                        : Icon(
                      Icons.camera_alt,
                      size: 35,
                    ),
                  ),

                ),


              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> pickImageFromGallery() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
    }
  }

  Future<void> pickImageFromCamera() async {
    final pickedImage =
    await ImagePicker().pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      setState(() {
        _selectedImage = File(pickedImage.path);
      });
    }
  }
}
