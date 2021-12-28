import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/models/user_forum_model.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class UserForumCard extends StatelessWidget {
  final UserForumModel userForumModel;
  final Function? onTap;

  const UserForumCard({Key? key, required this.userForumModel, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onTap!(),
      child: CardTemplate(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                SvgPicture.asset(
                  AppAssets.female,
                  height: 24.h,
                  width: 24.w,
                ),
                Expanded(
                  child: ListTile(
                    title: Text(
                      'Alex',
                      style: Theme.of(context).textTheme.subtitle2,
                    ),
                    subtitle: Text(
                      '5 days ago',
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ),
                Text(
                  userForumModel.category,
                  style: Theme.of(context).textTheme.subtitle1!.copyWith(
                        color: AppColor.secondaryColor,
                      ),
                ),
              ],
            ),
            SizedBox(
              height: 6.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  userForumModel.title,
                  style: Theme.of(context).textTheme.subtitle2!,
                ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              userForumModel.postData,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                    color: AppColor.greenSpring,
                    fontWeight: FontWeight.w700,
                  ),
            ),
            SizedBox(
              height: 2.h,
            ),
            Divider(
              color: AppColor.gallery,
              thickness: 2.0,
            ),
            SizedBox(
              height: 2.h,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.favorite,
                  color: AppColor.fuelYellow,
                  size: 20.w,
                ),
                SizedBox(
                  width: 4.w,
                ),
                GestureDetector(
                  onTap: () {
                    print("Like clicked");
                  },
                  child: Text(
                    "200k Likes",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
                SizedBox(
                  width: 24.w,
                ),
                Icon(
                  Icons.question_answer,
                  color: AppColor.fuelYellow,
                  size: 20.w,
                ),
                SizedBox(
                  width: 4.0,
                ),
                GestureDetector(
                  onTap: () {
                    print("Comment clicked");
                  },
                  child: Text(
                    "100k Comments",
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                ),
              ],
            ),
          ],
        ).setMarginSymmetric(
          horizontal: 12.w,
          vertical: 4.h,
        ),
      ),
    );
  }
}