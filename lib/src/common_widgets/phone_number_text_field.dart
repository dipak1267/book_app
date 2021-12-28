import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_beta/src/common_widgets/app_text_form_field.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';
import 'package:project_beta/theme/app_theme.dart';

class AppPhoneTextField extends StatelessWidget {
  final String dialingCode;
  final TextEditingController textEditingController;
  final TextInputType textInputType;
  final FocusNode? focusNode;
  final bool autoFocus;
  final List<TextInputFormatter>? inputFormatters;
  final Function? onTap;

  const AppPhoneTextField({
    required this.dialingCode,
    required this.textEditingController,
    this.textInputType: TextInputType.number,
    this.focusNode,
    this.autoFocus: true,
    this.inputFormatters,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: () => onTap!(),
          child: MaterialTemplate(
            child: Container(
              key: Key('CustomPhoneNumberFeild'),
              height: 16.h,
              width: 16.w,
              alignment: Alignment.center,
              padding: EdgeInsets.symmetric(
                horizontal: 4.w,
              ),
              child: Text(
                '+$dialingCode',
                style: Theme.of(context).textTheme.bodyText1!.copyWith(
                      color: AppColor.primaryColor,
                    ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        SizedBox(width: 6.w),
        Expanded(
          child: MaterialTemplate(
            child: AppTextFormField(
              hintText: 'Phone number',
              controller: textEditingController,
              textInputType: textInputType,
              focusNode: focusNode,
              inputFormatters: inputFormatters,
            ),
          ),
        )
      ],
    );
  }
}
