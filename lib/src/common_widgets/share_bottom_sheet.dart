import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_beta/constants/app_assets.dart';
import 'package:project_beta/constants/dummy_constant.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class ShareBottomSheet {
  static get(context) {
    return showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
              height: 220.0,
              color: Color(0xFF737373),
              child: Container(
                decoration: new BoxDecoration(
                    color: Colors.white,
                    borderRadius: new BorderRadius.only(
                        topLeft: const Radius.circular(40.0),
                        topRight: const Radius.circular(40.0))),
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width * 0.05),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      Container(
                        child: Center(
                          child: Container(
                            decoration: BoxDecoration(
                              color: AppColor.greenSpring.withAlpha(90),
                            ),
                            width: 36.0,
                            height: 4.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Center(
                        child: Text(
                          LanguageConstants.shareApp,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: AppColor.primaryColor,
                              fontSize: 22.0),
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            DummyConstants.googleMeet,
                            style: TextStyle(
                                color: AppColor.greenSpring,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 1.h,
                          ),
                          Column(
                            children: [
                              Icon(Icons.copy),
                              Text(
                                LanguageConstants.copy,
                                style: GoogleFonts.barlow(
                                  color: AppColor.greenSpring,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(vertical: 20.0),
                        decoration: BoxDecoration(
                            color: AppColor.gallery,
                            borderRadius: BorderRadius.circular(100.0)),
                        height: 2.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _socialBtn(
                              icon: AppAssets.facebookShare, onClick: () {}),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 42.0,
                              width: 42.0,
                              decoration: BoxDecoration(
                                  color: AppColor.greenSpring.withAlpha(50),
                                  border: Border.all(
                                      color: AppColor.greenSpring.withAlpha(75),
                                      width: 1.0),
                                  borderRadius: BorderRadius.circular(2.0)),
                              child: Center(
                                child: SvgPicture.asset(
                                  AppAssets.google,
                                  height: 22.0,
                                  width: 22.0,
                                ),
                              ),
                            ),
                          ),
                          _socialBtn(
                              icon: AppAssets.linkedinShare, onClick: () {}),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 42.0,
                              width: 42.0,
                              decoration: BoxDecoration(
                                  color: AppColor.greenSpring.withAlpha(50),
                                  border: Border.all(
                                      color: AppColor.greenSpring.withAlpha(75),
                                      width: 1.0),
                                  borderRadius: BorderRadius.circular(2.0)),
                              child: Center(
                                child: SvgPicture.asset(
                                  AppAssets.contactShare,
                                  height: 24.0,
                                  width: 24.0,
                                  color: AppColor.primaryColor,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ));
        });
  }

  static _socialBtn({required icon, required onClick}) {
    return InkWell(
      onTap: onClick,
      child: Container(
        height: 42.0,
        width: 42.0,
        decoration: BoxDecoration(
            color: AppColor.greenSpring.withAlpha(50),
            border: Border.all(
                color: AppColor.greenSpring.withAlpha(75), width: 1.0),
            borderRadius: BorderRadius.circular(2.0)),
        child: Center(
          child: SvgPicture.asset(
            icon,
            height: 32.0,
            width: 32.0,
          ),
        ),
      ),
    );
  }
}
