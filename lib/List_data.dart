import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ListData> {
  final countryList = [
    "India",
    "Bangladesh",
    "China",
    "Japan",
    "Bhutan",
    "Pakistan",
    "Afganistan",
    "Iran",
    "Iraq",
    "Saudi Arabia",
    "Russia",
    "Rome",
    "Belgium",
    "Zimbabe",
    "Sri Lanka",
    "Manipur",
    "Tajakistan",
    "Swizerland",
    "IceLand",
    "Denmark",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Data"),
      ),
      body: Card(
        child: ListView.builder(
            itemCount: countryList.length,
            itemBuilder: ((context, index) {
              final country = countryList[index];

              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: GestureDetector(
                  onTap: () {
                    showAlert(country);
                  },
                  child: Card(
                    child: Text(country),
                  ),
                ),
              );
            })),
      ),
    );
  }

  showAlert(String message) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(message),
            actions: [
              TextButton(
                onPressed: () {
                
                  Navigator.pop(context);
                },
                child: Text("ok"),
               
              )
            ],
          );
        });
  }
}
