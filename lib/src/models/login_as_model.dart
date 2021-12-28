import 'package:project_beta/constants/app_assets.dart';

List<LoginAsModel> loginAsModel = [
  LoginAsModel(title: 'Student', avatar: AppAssets.student),
  LoginAsModel(title: 'Guardian', avatar: AppAssets.parent),
  LoginAsModel(title: 'Mentor', avatar: AppAssets.mentor),
  LoginAsModel(title: 'Tutor', avatar: AppAssets.tutor),
  LoginAsModel(title: 'Counselor', avatar: AppAssets.counselor),
  LoginAsModel(title: 'Dietitian', avatar: AppAssets.dietitian),
];

class LoginAsModel {
  final String? title;
  final String? avatar;

  LoginAsModel({
    this.title,
    this.avatar,
  });
}
