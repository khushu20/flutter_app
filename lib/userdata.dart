import 'package:flutter/material.dart';
import 'package:flutter_container/login.dart';
import 'package:flutter_container/routes/app_routes.dart';
import 'package:flutter_container/user_list_item.dart';

class UserData extends StatefulWidget {
  const UserData({super.key});

  @override
  State<UserData> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<UserData> {
  List<Map> userList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: Text("UserList")),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.login);
        },
      ),
    

      // appBar: AppBar(
      //   backgroundColor: Color(0xFF32937e),
      //   title: Text("UserList"),

      // ),
      // floatingActionButton: FloatingActionButton(
      //   child: const Icon(Icons.add),onPressed: () {
      //    Navigator.pushNamed(context, AppRoutes.loginform);
      //   },),
      // body:  ListView.builder(
      //   itemCount: userDetailsListData.length,
      //   itemBuilder: (context, index) {
      //     final userData = userDetailsListData[index];

      //     return Users(
      //       userDetails: userData,
      //       //Implement the call back
      //       callBackValue: (userData) {
      //         showAlert(userData);
      //       },
      //     );
      //   },
      // ),
    );
  }

  /* showAlert(UserDetailsData userDetails) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("${userDetails.username} ${userDetails.password}"),
            actions: [
              TextButton(
                onPressed: () {
                  // print("button Action");
                  Navigator.pop(context);
                },
                child: const Text("Ok"),
                //style: ButtonStyle(backgroundColor:),
              )
            ],
          );
        });
  } */
}
