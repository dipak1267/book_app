import 'package:get/get.dart';
import 'package:project_beta/db/student_forum/draft.dart';
import 'package:project_beta/db/student_forum/draft_data.dart';

class DraftGetXController extends GetxController {
  late DraftDataTable _draftDataTable;

  @override
  void onInit() async {
    _draftDataTable = await DraftDatabase.getAllDrafts();
    super.onInit();
  }

  DraftDataTable get draftDataTable => _draftDataTable;

  set draftDataTable(DraftDataTable value) {
    _draftDataTable = value;
  }
}
