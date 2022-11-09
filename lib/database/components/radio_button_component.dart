import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_container/database/notofy_list.dart';
import 'package:group_radio_button/group_radio_button.dart';

class RadioButtonComponent extends StatelessWidget {
  RadioButtonComponent({super.key});
  final genderList = ["Male", "Female", "Others"];

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text("Please select Gender"),
      ValueListenableBuilder(
          valueListenable: radiobutton,
          builder: (context, value, child) {
            return RadioGroup<String>.builder(
              groupValue: value ?? "",
              onChanged: (value) {
                radiobutton.value = value;
              },
              items: genderList,
              itemBuilder: (item) => RadioButtonBuilder(
                item,
              ),
            );
          },
        ),
    ]);
  }
}
