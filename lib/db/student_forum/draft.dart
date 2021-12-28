import 'dart:convert';
import 'package:project_beta/db/student_forum/draft_data.dart';
import 'package:project_beta/db/student_forum/draft_table.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:uuid/uuid.dart';

class DraftDatabase {
  static String _emptyList =
      "{\"draft_list\" : [ {\"_id\" : \"\" , \"category\" : \"\" , \"subject\" : \"\" , \"description\" : \"\" , \"title\" : \"\"} ]}";
  static late SharedPreferences _database;

  static init() async {
    _database = await SharedPreferences.getInstance();
  }

  static String getId() => Uuid().v1().toString();

  static Future<DraftDataTable> getAllDrafts() async {
    var data = _database.getString(DraftConst.TABLE_NAME);
    var list = DraftDataTable();

    if (data != null) {
      if (data != "") {
        print("in if");
        list = DraftDataTable.fromJson(json.decode(data));
      }
    } else {
      print("in else");
      list = DraftDataTable.fromJson(json.decode(_emptyList));
    }
    print(list.toString());
    return list;
  }

  static addDraft(DraftModel draft) async {
    DraftDataTable list = await getAllDrafts();
    print("addDraft : ${list.draftList}");
    draft.id = getId();
    list.draftList.add(draft);
    await saveDataOnTable(list);
  }

  static Future<dynamic> updateDraft(DraftModel draft) async {
    DraftDataTable list = await getAllDrafts();
    var updateIndex = -1;

    for (var i = 0; i < list.draftList.length; i++) {
      var singleData = list.draftList[i];
      if (singleData.id == draft.id) {
        updateIndex = i;
        break;
      }
    }

    if (updateIndex != -1) {
      list.draftList[updateIndex] = draft;
      await saveDataOnTable(list);
      return true;
    } else {
      return null;
    }
  }

  static Future<DraftModel?> getSingleDraft(String id) async {
    DraftDataTable list = await getAllDrafts();
    DraftModel? draftModel;
    for (var i = 0; i < list.draftList.length; i++) {
      var singleData = list.draftList[i];
      if (singleData.id == id) {
        draftModel = singleData;
        break;
      }
    }
    return draftModel;
  }

  static Future<dynamic> deleteDraft(String id) async {
    DraftDataTable list = await getAllDrafts();
    List<DraftModel> newList = [];

    for (var i = 0; i < list.draftList.length; i++) {
      var singleData = list.draftList[i];
      if (singleData.id != id) {
        newList.add(singleData);
      }
    }

    if (newList.isNotEmpty) {
      list.draftList.clear();
      list.draftList.addAll(newList);
      await saveDataOnTable(list);
      return true;
    } else {
      return null;
    }
  }

  static saveDataOnTable(DraftDataTable list) async {
    var dataString = list.toJson();
    await _database.setString(DraftConst.TABLE_NAME, dataString);
  }
}

class DraftConst {
  static const TABLE_NAME = "draft_table";
}
