
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class imagepicker extends StatefulWidget {
  const imagepicker({Key? key}) : super(key: key);

  @override
  State<imagepicker> createState() => _imagespickerState();
}

class _imagespickerState extends State<imagepicker> {
  File ? _selectedImage;

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
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                MaterialButton(
                  color: Colors.cyan,
                  child: const Text(
                    'Pick image from gallery',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    pickImageFromGallery();
                  },
                ),
                const SizedBox(height: 10),
                MaterialButton(
                  color: Colors.blue,
                  child: const Text(
                    'Pick image from camera',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  onPressed: () {
                    pickImageFromCamera();
                  },
                ),
                const SizedBox(height: 20),
                _selectedImage != null
                    ? Image.file(
                  _selectedImage!,
                  height: 200,
                  width: 200,
                )
                    : const Text('Please select an image'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> pickImageFromGallery() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
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
