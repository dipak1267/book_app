import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaMiniButton extends StatelessWidget {
  final VoidCallback onClick;
  final Color? backgroundColor;
  final String? path;

  const SocialMediaMiniButton(
      {Key? key,
      required this.onClick,
      required this.path,
      this.backgroundColor: Colors.white})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onClick,
      child: Container(
        padding: EdgeInsets.all(8.0),
        height: 40.0,
        width: 40.0,
        decoration: BoxDecoration(
            color: backgroundColor!, borderRadius: BorderRadius.circular(4.0)),
        child: SvgPicture.asset(
          path!,
          height: 16.0,
          width: 16.0,
        ),
      ),
    );
  }
}
