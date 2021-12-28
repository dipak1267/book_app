import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project_beta/src/screen_utils.dart';

class AppColor {
  const AppColor._();

  static const Color primaryAccentColor = Color(0xFF2596be);
  static const Color greenAccent = Color(0xFF78b77b);
  static const Color primaryColor = Color(0xFF1d4269);
  static const Color primaryDarkColor = Color(0xFF053647);
  static const Color secondaryColor = Color(0xFFf2ae27);
  static const Color lightYellow = Color(0xffF5F4EF);
  static const Color lightPrimaryColor = Color(0xFF22538a);
  static const Color primaryLightColor = Color(0xFFb3d8e6);
  static const Color silverAccent = Colors.white30;
  static const Color scaffoldColor = Color(0xFF87AAAA);
  static const Color unselectedColor = Colors.black54;
  static const Color backgroundColor = Color(0xFFF5F5F5);
  static const Color lightBorderColor = Colors.white60;
  static const Color primaryTextColor = Color(0xFFF5F5F5);
  static const Color secondaryTextColor = Colors.black87;
  static const Color darkBorderColor = Colors.black54;
  static const Color darkBackgroundColor = Color(0xFF202020);

  // color names extracted from https://chir.ag/projects/name-that-color
  static const Color mercury = Color(0xFFe3e3e3);
  static const Color gallery = Color(0xFFededed);
  static const Color mineShaft = Color(0xFF333333);
  static const Color doveGrey = Color(0xff6f6f6f);
  static const Color facebook = Color(0xff3b5998);
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color fuelYellow = Color(0xfff2ae27);
  static const Color greenSpring = Color(0xffb0b1b0);
  static const Color pampas = Color(0xffF5F5EE);
  static const Color grayNickel = Color(0xffc5c5c4);
  static const Color desertStorm = Color(0xffEBEBEA);
  static const Color nevada = Color(0xff6c7178);

  //button colors
  static const Color buttonColor = Color(0xFF32CD32);
  static const Color buttonTextColor = Colors.white;
  static const Color tagTextColor = Colors.black54;
}

class AppTheme {
  const AppTheme._();

  static ThemeData init(BuildContext context) {
    return ThemeData(
      unselectedWidgetColor: AppColor.backgroundColor,
      primaryColor: AppColor.primaryColor,
      accentColor: AppColor.primaryColor,
      scaffoldBackgroundColor: AppColor.backgroundColor,
      brightness: Brightness.light,
      cardTheme: CardTheme(
        color: AppColor.backgroundColor,
      ),
      dividerColor: Colors.transparent,
      buttonColor: AppColor.buttonColor,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      secondaryHeaderColor: Colors.white,
      textTheme: AppTheme.textTheme(),
      backgroundColor: AppColor.backgroundColor,
      appBarTheme: AppBarTheme(
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: AppColor.backgroundColor,
        textTheme: AppTheme.textTheme(),
      ),
      canvasColor: AppColor.backgroundColor,
    );
  }

  static ThemeData global() {
    return ThemeData(
      primaryColor: AppColor.primaryColor,
      textTheme: GoogleFonts.barlowTextTheme(),
    );
  }

  static TextTheme get _textTheme => GoogleFonts.barlowTextTheme();

  static TextTheme get _headerTextTheme => GoogleFonts.barlowTextTheme();

  static TextStyle? get _headline6 => _headerTextTheme.headline6?.copyWith(
        fontSize: 18.0.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle? get _headline5 => _headerTextTheme.headline5?.copyWith(
        fontSize: 20.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle? get _headline4 => _headerTextTheme.headline4?.copyWith(
        fontSize: 22.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle? get _subtitle1 => _textTheme.subtitle1?.copyWith(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle? get _subtitle2 => _textTheme.subtitle2?.copyWith(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
      );

  static TextStyle? get _button => _textTheme.button?.copyWith(
        fontSize: 12.sp,
        color: AppColor.buttonTextColor,
      );

  static TextStyle? get _bodyText2 => _textTheme.bodyText2?.copyWith(
        fontSize: 12.sp,
        wordSpacing: 0.25,
        letterSpacing: 0.25,
        height: 1.5,
      );

  static TextStyle? get _caption => _textTheme.caption?.copyWith(
        fontSize: 14.sp,
        wordSpacing: 0.25,
        letterSpacing: 0.25,
        height: 1.5,
      );

  static TextStyle? get _overLine => _textTheme.caption?.copyWith(
        fontSize: 12.sp,
        wordSpacing: 0.25,
        letterSpacing: 0.25,
        height: 1.5,
      );

  static TextTheme textTheme() => TextTheme(
        headline6: _headline6?.copyWith(color: AppColor.primaryColor),
        headline5: _headline5?.copyWith(color: AppColor.primaryColor),
        headline4: _headline4?.copyWith(color: AppColor.primaryColor),
        subtitle1: _subtitle1?.copyWith(color: AppColor.primaryColor),
        subtitle2: _subtitle2?.copyWith(color: AppColor.primaryColor),
        bodyText2: _bodyText2?.copyWith(color: AppColor.primaryColor),
        button: _button,
        caption: _caption?.copyWith(color: AppColor.primaryColor),
        overline: _overLine?.copyWith(color: AppColor.primaryColor),
      );
}

extension ThemeTextExtension on TextTheme {
  TextStyle? get darkHintStyle =>
      bodyText2?.copyWith(color: AppColor.secondaryTextColor);

  TextStyle? get lightHintStyle =>
      subtitle2?.copyWith(color: AppColor.secondaryTextColor);

  TextStyle? get tabSelectedTextStyle => caption?.copyWith(fontSize: 12.sp);

  TextStyle? get tabUnSelectedTextStyle => caption?.copyWith(fontSize: 10.sp);

  TextStyle? get cardTextStyle => caption?.copyWith(
        fontSize: 10.sp,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      );

  TextStyle? get tagTextStyle => caption?.copyWith(
        fontSize: 10.sp,
      );

  TextStyle? get ratingTextStyle => caption?.copyWith(
        fontSize: 10.sp,
      );
}
