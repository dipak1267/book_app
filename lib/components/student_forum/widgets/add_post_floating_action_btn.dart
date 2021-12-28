import 'package:flutter/material.dart';
import 'package:project_beta/theme/app_theme.dart';

class AddPostFloatingActionButton extends StatelessWidget {
  final VoidCallback onTap;

  AddPostFloatingActionButton({required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColor.white,
            borderRadius: BorderRadius.circular(100.0),
            border: Border.all(color: AppColor.desertStorm, width: 2.0)),
        width: 52.0,
        height: 52.0,
        child: Center(
          child: Container(
            width: 44.0,
            height: 44.0,
            decoration: BoxDecoration(
                color: AppColor.primaryColor,
                borderRadius: BorderRadius.circular(100.0)),
            child: Icon(
              Icons.add,
              color: AppColor.white,
              size: 40.0,
            ),
          ),
        ),
      ),
    );
  }
}
