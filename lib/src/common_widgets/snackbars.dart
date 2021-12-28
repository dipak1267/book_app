import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:project_beta/main.dart';
import 'package:project_beta/theme/app_theme.dart';

class Snackbars {
  static showTextSnackBar({required text, required context, required type}) {
    if (kIsWeb) {
      fToast!.removeCustomToast();
      fToast!.init(context);
      return fToast!.showToast(
        child: _showToast(text, type),
        gravity: ToastGravity.BOTTOM_RIGHT,
        toastDuration: Duration(seconds: 4),
      );
    } else {
      return ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(text)));
    }
  }

  static _showToast(text, type) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        color: type == "success" ? Colors.green : Colors.red,
      ),
      width: 350,
      child: Text(
        text,
        style: TextStyle(color: AppColor.backgroundColor, fontSize: 14),
      ),
    );
  }
}
