import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';

ValueNotifier<XFile?> userImagePath = ValueNotifier(null);
ValueNotifier<String?> radiobutton = ValueNotifier(null);
ValueNotifier<String?> selectedCountry = ValueNotifier(null);
ValueNotifier<DateTime> userDob = ValueNotifier(DateTime.now());