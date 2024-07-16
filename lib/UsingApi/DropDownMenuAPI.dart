





// in this screen we are using Get api(token) with DropDownMenu and selected the one value from  field//

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice2/Model/DropDownModel.dart';

import '../services/api_service.dart';

class DropDown12 extends StatefulWidget {
  const DropDown12({Key? key}) : super(key: key);

  @override
  State<DropDown12> createState() => _DropDown12State();
}

class _DropDown12State extends State<DropDown12> {
  final List<String> items = ['one', 'two', 'three', 'four'];

  String selectedValue = "";

  String? valueChoose = "Select Category :";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(right: 20, left: 20, top: 10),
                        child: SizedBox(
                          height: 60,
                          child: FutureBuilder(
                              future: Get.put(APIService(Dio())).DropDownApi(
                                  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpZCI6MTI4LCJlbWFpbCI6ImdicnV3ZWlmZmFpQHlvcG1haWwuY29tIiwibmFtZSI6Ik1hbmlzaCIsImRldmljZV90b2tlbiI6ImZKa3NPQWw4UlB1eDFCNUc3WjlBVW86QVBBOTFiR0lJbnNwYnVkV3dhbG5hanFtaTNqS1JQdGtIMjIxeGNRV0ZhdXJWOVhTS1BfdWZ0WGRySjVtRXVfTDg2bWFvdGJiUl9CRTZabWx4UXJrbHllRmFMeWgtTE80Z0VwRlRhQjlNTWdfc3VQY2I5cGFDakxudEl6dThXcVBDYTJzZFpNUHRNY3IiLCJpYXQiOjE3MjAwOTU3NjN9.GqC_W5CiIS31hSlh2Z42nbvOS3omO6A604Jj_O91nfA'),
                              builder: (context, AsyncSnapshot<DropDownModel> snapshot) {
                                if (!snapshot.hasData) {
                                  if (snapshot.connectionState ==
                                      ConnectionState.waiting) {}
                                }
                                return Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    height: 90,
                                    decoration: BoxDecoration(
                                      border: Border.all(width: 0.5),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          right: 10, left: 10),
                                      child: Align(
                                        alignment: Alignment.center,
                                        child: DropdownButtonFormField(
                                          decoration:
                                              const InputDecoration.collapsed(
                                                  hintText: ' '),
                                          hint: Text(
                                            valueChoose!,
                                            style: const TextStyle(
                                                color: Colors.black),
                                            textAlign: TextAlign.center,
                                          ),
                                          items: snapshot.data!.data!
                                              .map((valueItem) {
                                            return DropdownMenuItem(
                                              value: valueItem.title,
                                              child: Text(
                                                  valueItem.id.toString()),
                                            );
                                          }).toList(),
                                          onChanged: (val) {
                                            setState(() {
                                              selectedValue = val.toString();
                                             print(selectedValue);
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              }),
                        ),
                      ),
                    ]))));
  }
}
