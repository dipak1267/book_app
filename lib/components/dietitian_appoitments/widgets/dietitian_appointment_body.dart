import 'package:beamer/beamer.dart';
import 'package:flutter/material.dart';
import 'package:project_beta/constants/app_routes.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/material_template.dart';

class DietitianAppointmentBody extends StatelessWidget {
  const DietitianAppointmentBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 6,
      itemBuilder: (context, index) => InkWell(
        onTap: () => Beamer.of(context).beamToNamed(AppRoutes.dietitianDetails),
        child: CardTemplate(
          child: Text(
            'Appointment $index',
            style: Theme.of(context).textTheme.subtitle2,
          ).setMarginAll(
            value: 16.w,
          ),
        ),
      ).setMarginOnly(
        bottom: 8.h,
      ),
    );
  }
}
