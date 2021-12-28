import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class FacebookGoogleLoginWidget extends StatelessWidget {
  final Function facebookLogin;
  final Function googleLogin;
  final double? height;

  const FacebookGoogleLoginWidget({
    required this.facebookLogin,
    this.height,
    required this.googleLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: AppIconButton(
            prefixWidget: SvgPicture.asset(AppAssets.facebookIcon),
            label: 'Facebook',
            onTap: () => facebookLogin(),
            height: height,
            borderColor: AppColor.darkBackgroundColor.withOpacity(0.2),
            backgroundColor: AppColor.darkBackgroundColor.withOpacity(0.1),
            textColor: AppColor.darkBackgroundColor.withOpacity(0.75),
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Expanded(
          child: AppIconButton(
            prefixWidget: SvgPicture.asset(
              AppAssets.google,
              fit: BoxFit.contain,
            ),
            label: 'Google',
            onTap: () => googleLogin(),
            height: height,
            borderColor: AppColor.darkBackgroundColor.withOpacity(0.2),
            backgroundColor: AppColor.darkBackgroundColor.withOpacity(0.1),
            textColor: AppColor.darkBackgroundColor.withOpacity(0.75),
            fontWeight: FontWeight.w500,
          ),
        )
      ],
    );
  }
}
