import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_container/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SignUpPage> {
  TextEditingController _firstName = TextEditingController();
  TextEditingController _lastName = TextEditingController();
  TextEditingController _mail = TextEditingController();
  TextEditingController _password = TextEditingController();
  bool _passwordAvailble = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Sign Up"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            shadowColor: Colors.red,
            elevation: 10.0,
            color: Colors.blueGrey,
            shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0)),
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [Text("Sign In",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.red),),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 20.0, left: 20.0, right: 20.0, bottom: 5.0),
                    child: TextFormField(
                      controller: _firstName,
                      decoration: InputDecoration(
                        labelText: "First Name",
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      validator: (text) {
                        if (text!.isEmpty) {
                          return 'Please Enter First Name';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 20.0),
                    child: TextFormField(
                      controller: _lastName,
                      decoration: InputDecoration(
                        labelText: "Last Name",
                        enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0)),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      validator: (text) {
                        if (text!.isEmpty) {
                          return 'Please Enter Last Name';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 20.0),
                    child: TextFormField(
                        controller: _mail,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Email";
                          } else if (!emailPattern(value)) {
                            return "Please Enter valid Email";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Email",
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0)),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 5.0, horizontal: 20.0),
                    child: TextFormField(
                        obscureText: !_passwordAvailble,
                        controller: _password,
                        validator: (text) {
                          if (text!.isEmpty) {
                            return "Please Enter Password";
                          } else if (!passwordPattern(text)) {
                            return "Please Enter Valid Password ";
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          labelText: "Password",
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _passwordAvailble = !_passwordAvailble;
                                });
                              },
                              child: Icon(Icons.remove_red_eye_outlined)),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 1, color: Colors.grey),
                              borderRadius: BorderRadius.circular(8.0)),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Already a member ? Log In"),
                  ),
                  TextButton(
                    onPressed: (() {
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: ((context) => LoginForm())));
                      }
                    }),
                    child: Text("Sign Up"),
                  )
                ],
              ),
            ),
          ),
        ));
  }
  /*  
 Email pattern
 Uppercase (A-Z) and lowercase (a-z) English letters.
Digits (0-9).
Characters ! # $ % & ' * + – / = ?
Character . */

  bool emailPattern(String email) {
    return RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
  }

/* Password Pattern
Minimum eight characters, at least one letter and one number: */
  bool passwordPattern(String password) {
    return RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$").hasMatch(password);
  }
}
