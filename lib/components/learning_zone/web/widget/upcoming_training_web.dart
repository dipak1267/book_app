import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/components/learning_zone/widgets/course_card.dart';
import 'package:project_beta/controller/learning_zone/training_getx_controller.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';

class UpcomingTrainingWeb extends StatelessWidget {
  const UpcomingTrainingWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<TrainingGetXController>(
      init: TrainingGetXController(),
      builder: (controller) {
        return Column(
          children: [
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: controller.courseList.length,
                itemBuilder: (context, index) {
                  return CourseCardWeb().setMarginSymmetric(
                    horizontal: 8.w,
                    vertical: 4.h,
                  );
                },
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisExtent: 120.h,
                  crossAxisSpacing: 8.w,
                  mainAxisSpacing: 4.w,
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
