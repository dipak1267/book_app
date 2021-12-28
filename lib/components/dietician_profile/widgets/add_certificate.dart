import 'package:flutter/material.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class AddCertificate extends StatelessWidget {
  final String title;
  final String hint;
  final IconData icon;
  final VoidCallback onTap;

  AddCertificate(
      {required this.title,
      required this.hint,
      required this.onTap,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        SizedBox(height: 1.h),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 4.w),
          height: 20.h,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4.0),
              border: Border.all(
                  color: AppColor.black.withOpacity(0.4), width: 1.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                hint,
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: AppColor.black.withOpacity(
                        0.3,
                      ),
                    ),
              ),
              GestureDetector(
                onTap: onTap,
                child: Icon(
                  icon,
                  color: AppColor.doveGrey.withAlpha(200),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
