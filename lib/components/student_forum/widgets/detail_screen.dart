import 'package:beamer/beamer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/controller/student_forum/forum_getx_controller.dart';

class DetailScreen extends StatelessWidget {
  final int? index;

  DetailScreen(this.index);

  @override
  Widget build(BuildContext context) {
    // var index =
    //     Beamer.of(context).currentBeamLocation.state.pathParameters['id'];
    return Scaffold(
      body: GetBuilder<ForumGetXController>(
        init: ForumGetXController(),
        builder: (controller) {
          return Container(
            // child: Center(child: Text(controller.data[index!].title)),
            child: Center(
                child: GestureDetector(
              onTap: () => Beamer.of(context).beamToNamed('/details/4'),
              child: Text(
                controller.data[index!].title,
                style: TextStyle(fontSize: 50.0),
              ),
            )),
          );
        },
      ),
    );
  }
}
