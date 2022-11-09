import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ProfileScreen> {
  dynamic jsonResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
      ),
      body: Column(
        children: [
           Image.network(jsonResult["image"], width: 100, height: 100),
          product_row_component('Name', jsonResult["name"]),
             product_row_component('Designation', jsonResult["designation"]),
               product_row_component('Salary', jsonResult["salary"] ),
                product_row_component('Maritial Status', jsonResult["married"]),
        ],
      ),
    );
  }

  Container product_row_component(String title, String value) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(title), Text(value)],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchProfileData();
  }

  fetchProfileData() async {
    String data = await rootBundle.loadString('assets/profile.json');

    setState(() {
      jsonResult = json.decode(data);
    });
    print("products list $jsonResult");
  }
}
