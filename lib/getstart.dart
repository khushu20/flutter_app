import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

class GetStart extends StatefulWidget {
  const GetStart({super.key});

  @override
  State<GetStart> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<GetStart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Get Start")),
     /*  body: Center(child: Column(children: [TextButton(onPressed: (() {
        Navigator.of(context).push(MaterialPageRoute(builder: context))
      }), child: Text("Login")),],)), */
    );
  }
}
