import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

pickImage({
  required ImageSource source,
}) async {
  final ImagePicker _picker = ImagePicker();
  final XFile? image = await _picker.pickImage(source: source);
  // checking whteher the image is null or seleceted
  if (image != null) {
    return await image.readAsBytes();
  } else {
    return "No image is selected";
  }
}
