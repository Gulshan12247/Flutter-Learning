
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/src/widgets/image.dart';
import 'package:practice2/Model/DropDownModel.dart';
import 'package:practice2/Model/ForModel.dart';
import 'package:practice2/Model/GulshanModel.dart';
import 'package:practice2/Model/Image12Model.dart';
import 'package:practice2/Model/Image1Model.dart';

import 'package:practice2/Model/SiqnImageModel.dart';
import 'package:practice2/Model/UpdateModel.dart';
import 'package:practice2/fuzzeddd/onboardingoneScreen.dart';
import 'package:practice2/listviewpractice.dart';
import 'package:practice2/main.dart';

// 267|yhOnY6d3sy8gfMLT7Ubjr2NPZpiiIXYOjz3Y1lxu
import '../Model/ListModel.dart';
import '../Model/LoginModel.dart';
import '../Model/NewsModel.dart';
import '../Model/RegisterModel.dart';

import '../listviewpractice.dart';
import '../listviewpractice.dart';
import '../listviewpractice.dart';
import '../listviewpractice.dart';
import '../listviewpractice.dart';
import '../listviewpractice.dart';
import '../listviewpractice.dart';
import '../utils/SharedPref.dart';
import 'dio_client.dart';

class APIService {
  DioClient? dioClient;
  late SharedPref shared;
  var token;
  Dio? dio;

  APIService(Dio dio) {
    this.dio = dio;
    dioClient = new DioClient(dio);
  }

  get imageModel => null;

  Options accessTokenOptions() {
    Options dioOption = Options(headers: {
      'Content-Type': 'application/json',
      'Accept': 'application/json',
      'X-Requested-With': 'XMLHttpRequest',
    });
    return dioOption;
  }

  Options accessTokenWithToken(token, {String? contentType}) {
    print('Token  -  $token');
    Options dioOption = Options(headers: {
      'Accept': 'application/json',
      'Content-Type': contentType ?? 'application/json',
      'Authorization': "Bearer " + token.toString(),
      'X-Requested-With': 'XMLHttpRequest',
    });
    return dioOption;
  }

  Options accessTokenWithcustomToken(token, {String? contentType}) {
    //   getSharedData();
    //var id = SharedPref.getInstance()!.getStringValuesSF(AppKeys.userId);
    //var token = shared.getString(AppKeys.token);

    // print('id  -  $id');
    print('token  -  $token');
    Options dioOption = Options(headers: {
      'Content-Type': contentType ?? 'application/json',
      'Accept': 'application/json',
      'Authorization': "Bearer " + token.toString(),
      'X-Requested-With': 'XMLHttpRequest',
    });
    return dioOption;
  }

//
  Future<LoginModel> LoginApi(params) async {
    print('Login');
    Response response = await dioClient!.post(
      'http://154.56.63.110:7000/vendorlogin',
      data: params,
      options: accessTokenOptions(),
    );
    print('register_response --- ${response.data}');
    return LoginModel.fromJson(response.data);
  }

// Future<UserDatum> getAccountInfo() async {
//   Response response =
//   await dioClient!.get(AppUrls.account_info_url);
//   return UserDatum.fromJson(response.data as Map);
// }

  ///.........................order details apis.........................///

  Future<GulshanModel> GulshanApi() async {
    print('Image');
    Response response = await dioClient!.get(
      "http://89.116.49.11:8080/users/dummyuserlistforgulshan",
      options: accessTokenOptions(),
    );
    print('login_response--- ${response.data}');
    return GulshanModel.fromJson(response.data as Map);
  }

  // Future<Map> SignImage(FormData params) async {
  //   print('Login');
  //   Response response = await dioClient!.post(
  //       'http://89.116.49.11:8080/users/signup',
  //       data: params,
  //       options: accessTokenOptions(),
  //   print('register_response --- ${response.data}');
  //   return response.data as Map;
  // }

  Future<Map> signImage(FormData params) async {
    Response response = await dioClient!.post(
        'http://89.116.49.11:8080/users/signup',
        data: params,
        options:
        accessTokenWithToken(token, contentType: 'multipart/form-data'));

    print('AddBlog response --- ${response.data}');
    return response.data as Map;
  }

// Future<Map> Image12Model(FormData params,token) async {
//   Response response = await dioClient!.post(
//       'http://89.116.49.11:8080/users/edit_profile',
//       data: params,
//       options:
//       accessTokenWithToken(token,contentType: 'multipart/form-data'));
//
//   print('AddBlog response --- ${response.data}');
//   return response.data as Map;
// }

  Future<Map> editProfile(FormData params, token) async {
    print("calling Edit-Profile response");
    Response response = await dioClient!.post(
        'http://154.56.63.110:7000/updatevendors',
        data: params,
        options:
        accessTokenWithToken(
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTI3LCJlbWFpbCI6ImdhanV0cnVsaXNhLTkzNzhAeW9wbWFpbC5jb20iLCJpYXQiOjE3MTk5ODI3OTJ9.emhg7kZAtvIfABjoL0AogczYdSx72eEbUswAAHkiEkI",
            contentType: 'multipart/form-data'));
    print('Edit-Profile response --- ${response.data}');
    return response.data as Map;
  }

  // using for raw data//

  Future<Image12Model> imageprofile(params, token) async {
    print("calling image-Profile response");
    Response response = await dioClient!.post(
        'http://89.116.49.11:8080/users/userprofile',
        data: params,
        options:
        accessTokenWithToken(
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9pZCI6IjY2ODY0Y2E1NTBkNzY2ZjJiN2RiZTA4ZiIsImVtYWlsIjoiQWRpdHlhQGdtYWlsLmNvbSIsImxvZ2luVGltZSI6MTcyMDA4NDE5OH0sImlhdCI6MTcyMDA4NDE5OCwiZXhwIjoxNzUxNjIwMTk4fQ.fVV9m-YNC-BDxoXCuHf9lPTBXBQdYjG7FM7hkrQRXSE "));
    print('Edit-imagess response --- ${response.data}');
    return Image12Model.fromJson(response.data as Map);
  }


  Future<DropDownModel>DropDownApi(String  token) async {
    print('Image');
    Response response = await dioClient!.get(
      "http://154.56.63.110:7000/api/allcategories",
      options:
      accessTokenWithToken(
          'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTI4LCJlbWFpbCI6ImdicnV3ZWlmZmFpQHlvcG1haWwuY29tIiwibmFtZSI6Ik1hbmlzaCIsImRldmljZV90b2tlbiI6ImZKa3NPQWw4UlB1eDFCNUc3WjlBVW86QVBBOTFiR0lJbnNwYnVkV3dhbG5hanFtaTNqS1JQdGtIMjIxeGNRV0ZhdXJWOVhTS1BfdWZ0WGRySjVtRXVfTDg2bWFvdGJiUl9CRTZabWx4UXJrbHllRmFMeWgtTE80Z0VwRlRhQjlNTWdfc3VQY2I5cGFDakxudEl6dThXcVBDYTJzZFpNUHRNY3IiLCJpYXQiOjE3MjAwOTU3NjN9.GqC_W5CiIS31hSlh2Z42nbvOS3omO6A604Jj_O91nfA') );
    print('title response --- ${response.data}');
    return DropDownModel.fromJson(response.data);
  }
  Future<ForModel> For(params, token) async {
    print("http://217.196.48.113:5000/item");
    Response response = await dioClient!.post(
        'http://217.196.48.113:5000/item',
        data: params,
        options:
        accessTokenWithToken(
            "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJkYXRhIjp7Il9pZCI6IjY2ODNhZjBjNDUwMjI0Njc5ZjhiN2IxNiIsImVtYWlsIjoieHl6MThAZ21haWwuY29tIiwibG9naW5UaW1lIjoxNzIwNDE5NTYzfSwiaWF0IjoxNzIwNDE5NTYzLCJleHAiOjE3NTE5NTU1NjN9.O2LPLqrxOyGMwacUJBbPWoETOAiy2zS6GQuTwBH18Dc "));
    print('Edit-imagess response --- ${response.data}');
    return ForModel.fromJson(response.data as Map);
  }

  Future<NewsModel> NewsApi() async {
    print('News');
    Response response = await dioClient!.get(
      "https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=40033eebb64e4e60bedc8ec7486097a3",
      options: accessTokenOptions(),
    );
    print('login_response--- ${response.data}');
    return NewsModel.fromJson(response.data as Map);
  }
}

