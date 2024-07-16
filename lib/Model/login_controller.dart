
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';

class login extends GetxController{

  final emailController=TextEditingController().obs;
  final passwordController=TextEditingController().obs;
  void loginApi()async{
    final responce = await post(Uri.parse("https://reqres.in/api/login"),
        body : { "email" : emailController.value.text,
          "password":passwordController.value.text,
        }
    );
    var data = jsonDecode(responce.body);
    print(responce.statusCode);

    if(responce.statusCode ==200){
      Get.snackbar('sucseesful',data['login']);
    }
    else{
      Get.snackbar("logon failed",data['error']);
    }
  }
}
