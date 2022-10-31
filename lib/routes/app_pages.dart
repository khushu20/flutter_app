import 'package:flutter/cupertino.dart';
import 'package:flutter_container/List_data.dart';
import 'package:flutter_container/getstart.dart';
import 'package:flutter_container/login.dart';
import 'package:flutter_container/login_page.dart';
import 'package:flutter_container/profile.dart';
import 'package:flutter_container/routes/app_routes.dart';
import 'package:flutter_container/signup.dart';
import 'package:flutter_container/userdata.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.getstart: ((context) => GetStart()),
      AppRoutes.login: ((context) => LoginPage()),
      AppRoutes.sign_up: ((context) => SignUpPage()),
       AppRoutes.listView: ((context) => ListData()),
     AppRoutes.userdata:(context) => UserData(),
     AppRoutes.loginform:(context) => LoginForm(),
     AppRoutes.profile:(context) => ProfileScreen()
    };
  }
}
