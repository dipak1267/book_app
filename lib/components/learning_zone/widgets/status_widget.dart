import 'package:flutter/material.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class StatusWidget extends StatelessWidget {
  const StatusWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Row(
          children: [
            Icon(
              Icons.wifi,
              color: AppColor.fuelYellow,
              size: 16.sp,
            ),
            SizedBox(width: 2.w),
            Text(
              'Online',
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                    color: AppColor.greenSpring,
                  ),
            ),
          ],
        ),
        SizedBox(
          width: 12.w,
        ),
        Expanded(
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Icon(
                  Icons.timer,
                  color: AppColor.fuelYellow,
                  size: 16.sp,
                ),
                Text(
                  '5.00 PM - 6.00 PM',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: AppColor.greenSpring,
                      ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            child: Row(
              children: [
                Icon(
                  Icons.calendar_today_rounded,
                  color: AppColor.fuelYellow,
                  size: 16.sp,
                ),
                SizedBox(width: 2.w),
                Text(
                  '22 March 2021',
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: AppColor.greenSpring,
                      ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class DateWidget extends StatelessWidget {
  const DateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      child: Row(
        children: [
          Icon(
            Icons.calendar_today_rounded,
            color: AppColor.fuelYellow,
            size: 16.sp,
          ),
          SizedBox(width: 2.w),
          Text(
            '22 March 2021',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: AppColor.greenSpring,
                ),
          ),
        ],
      ),
    );
  }
}
