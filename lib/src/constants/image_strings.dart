// import 'dart:io';
// import 'package:flutter/services.dart';
// import 'package:image/image.dart' as img;



const String tSplashTopIcon = "assets/images/logo.png";
const String tSplashImage = "assets/images/tagline.png";


// common
const String commonImageBlank = "assets/images/on_boarding_images/on-boarding-image.png";

// Future<String> convertImageToString(String imagePath) async {
//   ByteData byteData = await rootBundle.load(imagePath);
//   File file = File('${(await getTemporaryDirectory()).path}/temp.png');
//   await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));
//
//   img.Image? image = img.decodeImage(file.readAsBytesSync());
//   if (image != null) {
//     // Resize the image to your desired dimensions
//     img.Image resizedImage = img.copyResize(image, width: 200, height: 200);
//
//     // Encode the resized image to a PNG byte array
//     List<int> resizedBytes = img.encodePng(resizedImage);
//
//     // Convert the byte array to a base64 string
//     String base64Image = base64Encode(resizedBytes);
//
//     return base64Image;
//   } else {
//     throw Exception('Failed to decode image.');
//   }
// }
//
//
// String splashTopIcon = await convertImageToString("assets/images/logo.png");
// String splashImage = await convertImageToString("assets/images/tagline.png");
