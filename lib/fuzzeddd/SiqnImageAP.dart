





import 'dart:io';

import 'package:dio/dio.dart' as d;
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:practice2/Model/UpdateModel.dart';

import '../Model/SiqnImageModel.dart';
import '../services/api_service.dart';
import 'package:http_parser/http_parser.dart';

class ImageSign extends StatefulWidget {
  const ImageSign({Key? key}) : super(key: key);

  @override
  State<ImageSign> createState() => _ImageSignState();
}

class _ImageSignState extends State<ImageSign> {


  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController= TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  File? profileImage;

  final _picker = ImagePicker();
  File ? _selectedImage;
  SiqnImageModel? modelll;
  UpdateModel? update;
  APIService service = APIService(Dio());

  Future<void> _submitForm() async {
    try {

        var formData = d.FormData.fromMap({
          'name':_nameController.text,
          'email':'gajutrulisa-9378@yopmail.com',
          'phone_number':'8989898989',
          'address':'chandigarh',
          'about':'hi viewers',
          'id':127,
          'image': await d.MultipartFile.fromFile(
            profileImage!.path,
            filename: profileImage!.path.split('/').last,
            contentType:
            MediaType("image", "${profileImage!.path.split(".").last}"),
          ),
        });
        print("params,-${formData}");
        Map map = await service.editProfile(formData,"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTI3LCJlbWFpbCI6ImdhanV0cnVsaXNhLTkzNzhAeW9wbWFpbC5jb20iLCJpYXQiOjE3MTk5ODI3OTJ9.emhg7kZAtvIfABjoL0AogczYdSx72eEbUswAAHkiEkI",);
        if (map['statusCode'] == 200) {
          print('Uploaded successfully');
        } else if (map['statusCode'] == 400) {}
      } catch (e) {
      print('Error: $e');
    }
  }


  Future getCoverImage() async {
    try {
      XFile? imageFile = await _picker.pickImage(source: ImageSource.gallery);
      print('image --${imageFile!.path}');
      if (imageFile != null) {
        print('image --${imageFile.path}');
        setState(() {
          profileImage = File(imageFile.path);
        });
      } else {
        print('null');
      }
    } catch (error) {
      print('error:$error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child:SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Your email',
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(15),
                child: TextField(
                  controller: _phoneNumberController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                  ),
                  obscureText: true,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: TextField(
                  controller: _addressController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Confirm Password',
                  ),
                  obscureText: true,
                ),

              ),
              GestureDetector(
                onTap:  getCoverImage,
                child: SizedBox(
                  height: 200,
                  width: 300,
                  child: profileImage != null
                      ? Image.file(
                    profileImage!,
                    fit: BoxFit.cover,
                  )
                      : Icon(
                    Icons.camera_alt,
                    size: 35,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 50,
                width: 200,
                child: ElevatedButton(
                  onPressed: (){_submitForm();},
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }

}