import 'package:flutter/cupertino.dart';
import 'package:flutter_container/List_data.dart';
import 'package:flutter_container/getstart.dart';
import 'package:flutter_container/login_page.dart';
import 'package:flutter_container/routes/app_routes.dart';
import 'package:flutter_container/signup.dart';

class AppPages {
  static Map<String, WidgetBuilder> get routes {
    return {
      AppRoutes.intial: ((context) => GetStart()),
      AppRoutes.login: ((context) => LoginPage()),
      AppRoutes.sign_up: ((context) => SignUpPage()),
       AppRoutes.listView: ((context) => ListData()),
     
    };
  }
}
