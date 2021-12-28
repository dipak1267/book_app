import 'package:flutter/material.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/theme/app_theme.dart';

class TrainingImageHorizontalList extends StatelessWidget {
  const TrainingImageHorizontalList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          child: CircleAvatar(
            radius: 22.0,
            backgroundImage: AssetImage(AppAssets.person1),
            backgroundColor: Colors.transparent,
          ),
          decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.white),
              borderRadius: BorderRadius.circular(100.0)),
        ),
        Container(
          margin: EdgeInsets.only(left: 32.0),
          child: CircleAvatar(
            radius: 22.0,
            backgroundImage: AssetImage(AppAssets.person2),
            backgroundColor: Colors.transparent,
          ),
          decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.white),
              borderRadius: BorderRadius.circular(100.0)),
        ),
        Container(
          margin: EdgeInsets.only(left: 2 * 32.0),
          child: CircleAvatar(
            radius: 22.0,
            backgroundImage: AssetImage(AppAssets.person3),
            backgroundColor: Colors.transparent,
          ),
          decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.white),
              borderRadius: BorderRadius.circular(100.0)),
        ),
        Container(
          margin: EdgeInsets.only(left: 3 * 32.0),
          child: CircleAvatar(
            radius: 22.0,
            backgroundImage: AssetImage(AppAssets.person4),
            backgroundColor: Colors.transparent,
          ),
          decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.white),
              borderRadius: BorderRadius.circular(100.0)),
        ),
        Container(
          margin: EdgeInsets.only(left: 4 * 32.0),
          child: CircleAvatar(
            radius: 22.0,
            backgroundImage: AssetImage(AppAssets.person5),
            backgroundColor: Colors.transparent,
          ),
          decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.white),
              borderRadius: BorderRadius.circular(100.0)),
        ),
        Container(
          height: 46.0,
          margin: EdgeInsets.only(left: 5 * 32.0),
          child: Center(
            child: Text(
              "45+ coming here",
              style: Theme.of(context).textTheme.caption!.copyWith(
                  color: AppColor.greenSpring,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0),
            ),
          ),
        ),
      ],
    );
  }
}
