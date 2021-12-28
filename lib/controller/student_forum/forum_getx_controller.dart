import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:project_beta/constants/lang_constants.dart';
import 'package:project_beta/src/models/user_forum_model.dart';

class ForumGetXController extends GetxController {
  var data = [
    UserForumModel("First Card", "Business", LanguageConstants.loremIpsum),
    UserForumModel("Second Card", "Technology", LanguageConstants.loremIpsum),
    UserForumModel("Third Card", "Politics", LanguageConstants.loremIpsum),
    UserForumModel("Forth Card", "Society", LanguageConstants.loremIpsum),
    UserForumModel("Fifth Card", "Health", LanguageConstants.loremIpsum),
    UserForumModel("Sixth Card", "Forbes", LanguageConstants.loremIpsum),
    UserForumModel("Seventh Card", "Agriculture", LanguageConstants.loremIpsum),
    UserForumModel("Eighth Card", "Stock Market", LanguageConstants.loremIpsum),
    UserForumModel(
        "Ninth Card", "Cryptocurrency", LanguageConstants.loremIpsum),
  ].obs;

  late String selectedListItem;

  @override
  void onInit() {
    super.onInit();
  }
}
