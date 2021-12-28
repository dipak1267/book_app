import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class CircularIconContainer extends StatelessWidget {
  final Color? iconBackgroundColor;
  final String? avatar;
  final double padding;
  final double? height;
  final bool bottomPaddingNull;

  const CircularIconContainer({
    Key? key,
    this.avatar,
    this.padding: 4,
    this.height,
    this.iconBackgroundColor,
    this.bottomPaddingNull: false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      clipBehavior: Clip.hardEdge,
      padding: EdgeInsets.all(
        padding.w,
      ),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: iconBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: AppColor.darkBackgroundColor.withOpacity(0.08),
            blurRadius: 25.0, // soften the shadow
            spreadRadius: 5.0, //extend the shadow
            offset: Offset(
              15.0, // Move to right 10  horizontally
              15.0, // Move to bottom 10 Vertically
            ),
          )
        ],
      ),
      child: SvgPicture.asset(
        avatar!,
        fit: BoxFit.contain,
      ),
    );
  }
}

// class SignUpAsContainer extends StatelessWidget {
//   final Color? iconBackgroundColor;
//   final String? avatar;
//   final double padding;
//   final double? height;
//   final bool bottomPaddingNull;
//
//   const CircularIconContainer({
//     Key? key,
//     this.avatar,
//     this.padding: 4,
//     this.height,
//     this.iconBackgroundColor,
//     this.bottomPaddingNull: false,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: height,
//       clipBehavior: Clip.hardEdge,
//       padding: EdgeInsets.all(
//         padding.w,
//       ),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: iconBackgroundColor,
//         boxShadow: [
//           BoxShadow(
//             color: AppColor.darkBackgroundColor.withOpacity(0.08),
//             blurRadius: 25.0, // soften the shadow
//             spreadRadius: 5.0, //extend the shadow
//             offset: Offset(
//               15.0, // Move to right 10  horizontally
//               15.0, // Move to bottom 10 Vertically
//             ),
//           )
//         ],
//       ),
//       child: SvgPicture.asset(
//         avatar!,
//         fit: BoxFit.contain,
//       ),
//     );
//   }
// }