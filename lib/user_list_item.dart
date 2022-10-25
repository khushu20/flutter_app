import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_container/login.dart';

class Users  extends StatelessWidget {
  const Users ({super.key, required this.userDetails, required this.callBackValue});
   final UserDetailsData userDetails;
  //Create The Callback
  final Function(UserDetailsData userDetails) callBackValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
       callBackValue(userDetails);
    },child: ListTile(
        title: Text("${userDetails.username}"),
        subtitle: Text("${userDetails.password}"),
      ),);
  }
}