import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerNew extends StatefulWidget {
  const ImagePickerNew({super.key});

  @override
  State<ImagePickerNew> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ImagePickerNew> {
  XFile? _image;
  final ImagePicker _picker = ImagePicker();

  Future getImagefromGallery() async {
    var pickedFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      _image = pickedFile;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Center(
          child: Text(
            "Image Picker Example in Flutter",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 200.0,
            child: Center(
              child: _image == null
                  ? Text("No Image is picked")
                  : Image.file(File(_image!.path)),
            ),
          ),
        ),
        TextButton(
            onPressed: (() {
              showDialog(
                barrierColor: Colors.black26,
                context: context,
                builder: (context) {
                  return CustomAlertDialog(
                    title: "Image Picker",
                    description: "Please choose images",
                  );
                },
              );
            }),
            child: Text("Take Photo"))
      ]),
    );
  }
}

class CustomAlertDialog extends StatefulWidget {
  const CustomAlertDialog({
    Key? key,
    required this.title,
    required this.description,
  }) : super(key: key);

  final String title, description;

  @override
  _CustomAlertDialogState createState() => _CustomAlertDialogState();
}

class _CustomAlertDialogState extends State<CustomAlertDialog> {
  ImagePicker picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Dialog(
      elevation: 0,
      backgroundColor: Color(0xffffffff),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(height: 15),
          Text(
            "${widget.title}",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 15),
          Text("${widget.description}"),
          SizedBox(height: 20),
          Divider(
            height: 1,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: InkWell(
              highlightColor: Colors.grey[200],
              onTap: () {
                //  getImagefromcamera();
              },
              child: Center(
                child: Text(
                  "Camera",
                  style: TextStyle(
                    fontSize: 18.0,
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          Divider(
            height: 1,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: InkWell(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15.0),
                bottomRight: Radius.circular(15.0),
              ),
              highlightColor: Colors.grey[200],
              onTap: () async {
                final ImagePicker _picker = ImagePicker();
                final XFile? photo =
                    await _picker.pickImage(source: ImageSource.camera);
                // ignore: unused_local_variable
                //File photofile = File(photo.path);
                Navigator.of(context).pop();
              },
              child: Center(
                child: Text(
                  "Gallery",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
