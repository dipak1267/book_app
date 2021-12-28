import 'package:flutter/material.dart';
import 'package:flutter_tags/flutter_tags.dart';
import 'package:project_beta/src/screen_utils.dart';

class AppTagWidget extends StatelessWidget {
  final String? title;
  final int itemCount;
  final Key tagKey;
  final Widget Function(int) itemBuilder;
  final Function(String) onSubmit;

  AppTagWidget(
      {this.title,
      required this.itemBuilder,
      required this.tagKey,
      required this.itemCount,
      required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: Theme.of(context).textTheme.subtitle2,
        ),
        SizedBox(height: 2.h),
        Card(
          elevation: 5,
          child: Padding(
            padding: EdgeInsets.only(
              bottom: 8.h,
              left: 4.h,
              right: 4.h,
              top: 4.h,
            ),
            child: Tags(
              columns: 3,
              key: tagKey,
              itemCount: itemCount,
              spacing: 4.w,
              alignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.up,
              textField: TagsTextField(
                autofocus: true,
                textStyle: Theme.of(context).textTheme.bodyText2!,
                padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
                width: MediaQuery.of(context).size.width,
                inputDecoration: InputDecoration(border: InputBorder.none),
                onSubmitted: (value) => onSubmit(value),
              ),
              itemBuilder: (index) => itemBuilder(index),
            ),
          ),
        )
      ],
    );
  }
}
