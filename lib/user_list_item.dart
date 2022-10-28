import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UserListBuilder extends StatelessWidget {
  const UserListBuilder(
      {super.key,
      required this.userName,
      required this.password,
      required this.callBackValue});

  final String userName;
  final String password;

  //Create The Callback
  final Function(String username, String password) callBackValue;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Column(children: [Text(userName), Text(password)]),
      onTap: (() {
        //callback
        callBackValue(userName, password);
      }),
    );
  }
}
