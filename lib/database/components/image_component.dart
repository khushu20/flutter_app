import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_container/database/notofy_list.dart';
import 'package:image_picker/image_picker.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
         final imageFile =
            await ImagePicker().pickImage(source: ImageSource.gallery);
        userImagePath.value = imageFile;
      },
      child: ValueListenableBuilder(valueListenable: userImagePath,
      builder: (context, value, child) {
        return value == null
              ? Image.network("https://www.newmynamepix.com/upload/post/sample/1589515256_New_Beautiful_Girl_Pictures_Profile_With_Name_Images.jpg",
              width: 100.0,
              height: 100.0,)
              : Image.file(File(value.path),width: 100,height: 100,);
      },
     ),
    );
  }
}