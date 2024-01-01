import 'dart:html';
import 'package:flutter/material.dart';
import 'package:flutter_animated_dialog/flutter_animated_dialog.dart';
import 'package:portafolio/assets/utils/theme/themes_provider.dart';

downloadFile(url, flag) {
  AnchorElement anchorElement = AnchorElement(href: url);
  if (flag == 'es') {
    anchorElement.download = "CV_ES";
  } else {
    anchorElement.download = "CV_EN";
  }
  anchorElement.click();
}

Future<Object?> showInfo(BuildContext context, String text) {
  return showAnimatedDialog(
    context: context,
    barrierDismissible: true,
    animationType: DialogTransitionType.slideFromBottom,
    curve: Curves.fastOutSlowIn,
    duration: const Duration(seconds: 1),
    builder: (BuildContext context) => Dialog(
      shape: const RoundedRectangleBorder(
        borderRadius: borderRadius10,
      ),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.deepPurple.withOpacity(0.05),
          borderRadius: borderRadius10,
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
          ),
        ),
      ),
    ),
  );
}
