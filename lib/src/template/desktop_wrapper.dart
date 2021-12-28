import 'package:flutter/material.dart';
import 'package:project_beta/theme/app_theme.dart';

class DesktopWrapper extends StatelessWidget {
  final Widget child;

  const DesktopWrapper({required this.child});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColor.primaryColor,
                border: Border.all(
                  color: AppColor.darkBorderColor,
                ),
                image: DecorationImage(
                    image: Image.asset('assets/logo.png').image),
              ),
              // child: SvgPicture.asset(
              //   'assets/logo2.svg',
              //   fit: BoxFit.contain,
              // ),
            ),
          ),
          Expanded(
            child: child,
          ),
        ],
      ),
    );
  }
}
