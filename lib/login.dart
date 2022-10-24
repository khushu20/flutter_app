import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginForm> {
  TextEditingController _userName = TextEditingController();
  TextEditingController _password = TextEditingController();
 
  String p = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Form")),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
              controller: _userName,
              decoration: InputDecoration(
                labelText: "Username",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0)),
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
              controller: _password,
              decoration: InputDecoration(
                labelText: "Password",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(width: 1, color: Colors.grey),
                    borderRadius: BorderRadius.circular(20.0)),
              )),
        ),
        GestureDetector(
          onTap: validation,
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.blue),
            height: 50,
            width: 100,
          
            child: Center(child: Text("Login")),
          ),
        ),
      ]),
    );
  }

  validation() {
    if (_userName.text.isEmpty) {
      showAlert("please enter username ");
      
    } else if(!RegExp(r'^[a-z A-Z]+$').hasMatch(_userName.text)){
      showAlert("please enter valid username ");

    }
    else if (_password.text.isEmpty || !RegExp(
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
    .hasMatch(_password.text)) {
      showAlert("please enter password ");
    }
  }

  showAlert(String message) {
    showDialog(
        context: context,
        builder: (builder) => AlertDialog(
              title: Text(message),
              actions: [
                TextButton(
                    onPressed: (() {
                      Navigator.of(context).pop();
                    }),
                    child: Text("OK"))
              ],
            ));
  }
}
