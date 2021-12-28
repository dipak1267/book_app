import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_beta/network/api_service.dart';
import 'package:project_beta/src/common_widgets/app_button.dart';
import 'package:project_beta/src/common_widgets/snackbars.dart';
import 'package:project_beta/src/extensions/common_extension.dart';
import 'package:project_beta/src/screen_utils.dart';
import 'package:project_beta/src/template/responsive.dart';
import 'package:project_beta/theme/app_theme.dart';

import 'constants/lang_constants.dart';

class ApiTestScreen extends StatelessWidget {
  const ApiTestScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Responsive(
      mobile: ApiTestMobile(),
      desktop: ApiTestMobile(),
      tablet: ApiTestMobile(),
    );
  }
}

class ApiTestMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Testing Api"),
      ),
      body: Container(
        child: GetBuilder<ApiTestGetXController>(
          init: ApiTestGetXController(),
          builder: (controller) {
            return Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.1),
              child: ListView(
                children: [
                  AppButton(
                    height: 24.h,
                    label: 'CREATE',
                    onTap: () => controller.createPost(context),
                    backgroundColor: AppColor.primaryColor,
                    textColor: AppColor.backgroundColor,
                    fontWeight: FontWeight.w500,
                  ).setMarginOnly(
                    bottom: 8.h,
                    top: 12.h,
                  ),
                  AppButton(
                    height: 24.h,
                    label: 'UPDATE',
                    onTap: () => controller.updatePost(context),
                    backgroundColor: AppColor.primaryColor,
                    textColor: AppColor.backgroundColor,
                    fontWeight: FontWeight.w500,
                  ).setMarginOnly(
                    bottom: 8.h,
                    top: 12.h,
                  ),
                  AppButton(
                    height: 24.h,
                    label: 'DELETE',
                    onTap: () => controller.deletePost(context),
                    backgroundColor: AppColor.primaryColor,
                    textColor: AppColor.backgroundColor,
                    fontWeight: FontWeight.w500,
                  ).setMarginOnly(
                    bottom: 8.h,
                    top: 12.h,
                  ),
                  AppButton(
                    height: 24.h,
                    label: 'GET POST SEARCH',
                    onTap: () => controller.postSearch(context),
                    backgroundColor: AppColor.primaryColor,
                    textColor: AppColor.backgroundColor,
                    fontWeight: FontWeight.w500,
                  ).setMarginOnly(
                    bottom: 8.h,
                    top: 12.h,
                  ),
                  AppButton(
                    height: 24.h,
                    label: 'GET POST COMMENTS',
                    //onTap: () => controller.postComments(context),
                    onTap: () {},
                    backgroundColor: AppColor.primaryColor,
                    textColor: AppColor.backgroundColor,
                    fontWeight: FontWeight.w500,
                  ).setMarginOnly(
                    bottom: 8.h,
                    top: 12.h,
                  ),
                  AppButton(
                    height: 24.h,
                    label: 'GET POST ALL',
                    onTap: () => () {},
                    backgroundColor: AppColor.primaryColor,
                    textColor: AppColor.backgroundColor,
                    fontWeight: FontWeight.w500,
                  ).setMarginOnly(
                    bottom: 8.h,
                    top: 12.h,
                  ),
                  AppButton(
                    height: 24.h,
                    label: 'CREATE POST LIKE',
                    onTap: () => controller.likePost(context),
                    backgroundColor: AppColor.primaryColor,
                    textColor: AppColor.backgroundColor,
                    fontWeight: FontWeight.w500,
                  ).setMarginOnly(
                    bottom: 8.h,
                    top: 12.h,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

class ApiTestGetXController extends GetxController {
  createPost(context) async {
    var data = {
      'category_id': '1',
      'subject': 'Testing Post',
      'description': 'This is the testing description',
      'hashTag': '#test #debug #code'
    };

    var response = await ApiService.addPostData(data: data);
    _checkIfResponseNull(response, context);
    print(response.toString());
  }

  updatePost(context) async {
    var data = {
      'category_id': '1',
      'subject': 'Testing Post Updated',
      'description': 'This is the updated description',
      'hashTag': '#test #debug #code',
    };

    var id = 15;
    var response = await ApiService.updatePostData(data: data, id: id);
    _checkIfResponseNull(response, context);
    print(response.toString());
  }

  deletePost(context) async {
    var id = 15;
    var response = await ApiService.deletePostData(id: id);
    _checkIfResponseNull(response, context);
    print(response.toString());
  }

  postSearch(context) async {
    var data = {
      'hashTag': '#test',
      'category': '4',
      'subject': 'test',
    };
    var response = await ApiService.getPostSearch(data: data);
    _checkIfResponseNull(response, context);
    print(response.toString());
  }

  // postComments(context) async {
  //   var id = 11;
  //   var response = await ApiService.postComments(id: id);
  //   _checkIfResponseNull(response, context);
  //   print(response.toString());
  // }

  // getAllPosts(context) async {
  //   var response = await ApiService.getAllPost();
  //   _checkIfResponseNull(response, context);
  //   print(response.toString());
  // }

  likePost(context) async {
    var data = {
      'module_type': 'posts',
      'post_id': '4',
      'user_id': '1',
    };
    var response = await ApiService.likePost(data: data);
    _checkIfResponseNull(response, context);
    print(response.toString());
  }

  _checkIfResponseNull(response, context) {
    if (response == null) {
      Snackbars.showTextSnackBar(
        text: LanguageConstants.somethingWentWrongPleaseTryAgain,
        context: context,
        type: "error",
      );
    }
  }
}
