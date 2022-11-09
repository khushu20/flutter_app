import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_container/database/components/datepicker_component.dart';
import 'package:flutter_container/database/components/image_component.dart';
import 'package:flutter_container/database/database_helper.dart';
import 'package:flutter_container/database/notofy_list.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

import 'application_model.dart';
import 'components/drop_down_component.dart';
import 'components/radio_button_component.dart';

class ApplicationForm extends StatefulWidget {
  const ApplicationForm({super.key});

  @override
  State<ApplicationForm> createState() => Application();
}

class Application extends State<ApplicationForm> {
  TextEditingController _nameController = TextEditingController();

  TextEditingController _email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return applicationform(context);
  }

  applicationform(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Application Form")),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageComponent(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    labelText: "Name",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.red),
                        borderRadius: BorderRadius.circular(20.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.red),
                        borderRadius: BorderRadius.circular(20.0)),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                  controller: _email,
                  decoration: InputDecoration(
                    labelText: "Email",
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.red),
                        borderRadius: BorderRadius.circular(20.0)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: Colors.red),
                        borderRadius: BorderRadius.circular(20.0)),
                  )),
            ),
            RadioButtonComponent(),
            UserDobComponent(),
            DropDownComponent(),
            TextButton(onPressed: (() async {
                final date = DateFormat("yyyy/MM/dd").format(userDob.value);

                final cricketerData = FormModel(
                    gender: radiobutton.value,
                    dob: date,
                    name: _nameController.text,
                    email: _email.text,
                    role: "",
                    country: selectedCountry.value,
                    userId: Uuid().v1(),
                    userimage: userImagePath.value?.path ?? "");

                print("print gender ${radiobutton.value}");
                print("print image file ${userImagePath.value?.path}");
                print("print dob ${userDob.value}");
                print("print country ${selectedCountry.value}");
                final DatabaseHelper _databaseService = DatabaseHelper.instance;
                final saved = await _databaseService.insertInto(
                    cricketerData.toJson(), "ApplicationTable");
                print("data saved $saved");
              
            }), child: Text("Submit"))
          ],
        ));
  }
}
