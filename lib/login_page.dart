import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: Text("Login Page"),
        backgroundColor: Colors.red,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              maxLength: 10,
              cursorColor: Colors.red,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              keyboardType: TextInputType.number,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              maxLines: null,
            ),
          ),
          
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: TextField(
              
                decoration: InputDecoration(
              labelText: "Username",
              enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.red),borderRadius: BorderRadius.circular(20.0)),
                   focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 1, color: Colors.red),borderRadius: BorderRadius.circular(20.0)),
                  
          )),
           ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
              obscureText: true,
            ),
          ),
         
        ]),
      ),
    );
  }
}
