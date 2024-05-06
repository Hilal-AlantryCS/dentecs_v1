// ignore_for_file: unnecessary_string_interpolations

import 'package:dentecs_v1/core/constant/message.dart';

vaildInput(val, min, max) {
  if (val.length > max) {
    return "$messageInputMax $max";
  }

  if (val.isEmpty) {
    return "$messageInputEmpty";
  }
  if (val.length < min) {
    return "$messageInputMin $min";
  }
}
