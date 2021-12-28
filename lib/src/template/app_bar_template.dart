import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project_beta/constants/app_icons.dart';
import 'package:project_beta/src/common_widgets/app_list_tyle.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/theme/app_theme.dart';

class SliverAppBarTemplate extends StatelessWidget {
  final double expandedHeight;
  final String title;
  final String subTitle;
  final Widget body;
  final double? fontSize;
  final double? subTitleFontSize;
  final double? bottomHeight;
  final double? topHeight;
  final Widget? trailingWidget;
  final Color backgroundColor;
  final bool trialWidgetEnabled;
  final bool? leading;

  const SliverAppBarTemplate({
    this.expandedHeight: 0,
    this.title: '',
    this.subTitle: '',
    required this.body,
    this.backgroundColor: AppColor.primaryColor,
    this.trailingWidget,
    this.fontSize,
    this.trialWidgetEnabled: false,
    this.subTitleFontSize,
    this.bottomHeight: 4,
    this.topHeight: 4,
    this.leading: true,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: NestedScrollView(
        floatHeaderSlivers: false,
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              expandedHeight: expandedHeight,
              pinned: true,
              elevation: 5,
              floating: false,
              stretch: true,
              leading: leading == true
                  ? IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: AppColor.backgroundColor,
                        size: 28.w,
                      ),
                      onPressed: () {
                        Beamer.of(context).beamBack();
                        print('BACK');
                      },
                    ).setMarginOnly(
                      left: 12.w,
                    )
                  : Container(),
              backgroundColor: backgroundColor,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                collapseMode: CollapseMode.parallax,
                titlePadding: EdgeInsets.zero,
                title: trialWidgetEnabled == false
                    ? AppListTile(
                        title: title,
                        subTitle: subTitle,
                        titleTextStyle:
                            Theme.of(context).textTheme.headline5!.copyWith(
                                  color: AppColor.backgroundColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: fontSize,
                                ),
                        subTitleTextStyle:
                            Theme.of(context).textTheme.subtitle2!.copyWith(
                                  color: AppColor.backgroundColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: subTitleFontSize,
                                ),
                      ).setMarginOnly(
                        top: topHeight!.h,
                        bottom: 2.h,
                      )
                    : Row(
                        children: [
                          Expanded(
                            child: Text(
                              title,
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle1!
                                  .copyWith(
                                    color: AppColor.backgroundColor,
                                    fontWeight: FontWeight.w700,
                                    fontSize: fontSize,
                                  ),
                            ),
                          ),
                          trailingWidget!,
                        ],
                      ).setMarginOnly(
                        right: 24.w,
                        left: 24.w,
                        bottom: bottomHeight!.h,
                      ),
              ),
            ),
          ];
        },
        body: Container(
          padding: EdgeInsets.symmetric(
            vertical: 4.h,
            horizontal: MediaQuery.of(context).size.width * 0.05,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(64.w),
              topRight: Radius.circular(64.w),
            ),
            color: AppColor.backgroundColor,
          ),
          child: body,
        ),
      ),
    );
  }
}

class AppBarTemplate extends StatelessWidget {
  final double? toolbarHeight;
  final double? elevation;
  final Widget? suffixWidget;
  final Widget? body;
  final String? title;
  final bool? isDrawer;
  final bool? centerTitle;
  final Color? backGroundColor;
  final Drawer? drawer;
  final Widget? floatingActionButton;

  const AppBarTemplate({
    this.toolbarHeight: 32,
    this.elevation,
    this.title,
    this.suffixWidget,
    this.isDrawer: false,
    this.body,
    this.backGroundColor,
    this.centerTitle: true,
    this.floatingActionButton,
    this.drawer,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingActionButton,
      backgroundColor: backGroundColor,
      drawer: drawer,
      appBar: AppBar(
        elevation: 0.7,
        centerTitle: centerTitle,
        toolbarHeight: toolbarHeight!.h,
        toolbarOpacity: 1,
        backgroundColor: backGroundColor,
        title: Text(
          title!,
          style: Theme.of(context).textTheme.headline4!.copyWith(
                color: AppColor.primaryColor,
                fontWeight: FontWeight.w700,
              ),
        ),
        leading: isDrawer == true
            ? Builder(
                builder: (context) {
                  return IconButton(
                    icon: Icon(
                      AppIcons.burgerIcon,
                      color: AppColor.primaryColor,
                      size: 24.w,
                    ),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    tooltip:
                        MaterialLocalizations.of(context).openAppDrawerTooltip,
                  ).setMarginOnly(
                    left: 24.w,
                  );
                },
              )
            : IconButton(
                icon: Icon(
                  Icons.arrow_back,
                  color: AppColor.primaryColor,
                  size: 28.w,
                ),
                onPressed: () {
                  Beamer.of(context).beamBack();
                },
              ).setMarginOnly(
                left: 24.w,
              ),
        actions: [suffixWidget ?? Container()],
      ),
      body: body,
    );
  }
}

class AppBarTemplateTwo extends StatelessWidget {
  final double? toolbarHeight;
  final double? elevation;
  final Widget? suffixWidget;
  final Widget? prefixWidget;
  final Widget? customWidget;
  final Widget? body;
  final String? title;
  final bool? centerTitle;
  final Color? backGroundColor;
  final Widget? drawerWidget;
  final Widget? floatingActionButton;
  final bool customWidgetRequired;

  const AppBarTemplateTwo({
    this.toolbarHeight: 32,
    this.elevation,
    this.title,
    this.suffixWidget,
    this.prefixWidget,
    this.customWidget,
    this.body,
    this.drawerWidget,
    this.backGroundColor,
    this.centerTitle: true,
    this.floatingActionButton,
    this.customWidgetRequired: false,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backGroundColor,
      appBar: AppBar(
        backgroundColor: backGroundColor,
        toolbarHeight: toolbarHeight,
        elevation: elevation,
        centerTitle: centerTitle,
        leading: Container(),
        flexibleSpace: Container(
          decoration: BoxDecoration(color: AppColor.white),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Flexible(
                  fit: FlexFit.loose,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.w,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        prefixWidget!,
                        Text(
                          title!,
                          style: Theme.of(context)
                              .textTheme
                              .headline5!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        suffixWidget!,
                      ],
                    ),
                  ),
                ),
                customWidgetRequired == true ? customWidget! : Container()
              ],
            ),
          ).setMarginOnly(
            top: 16.h,
          ),
        ),
      ),
      body: body,
    );
  }
}
