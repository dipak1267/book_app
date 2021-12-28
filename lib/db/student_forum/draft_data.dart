import 'package:project_beta/db/student_forum/draft_table.dart';

class DraftDataTable {
  late List<DraftModel> draftList;

  DraftDataTable() {
    draftList = [];
  }

  DraftDataTable.fromJson(Map<String, dynamic> json) {
    if (json['draft_list'] != null) {
      draftList = [];
      json['draft_list'].forEach((v) {
        draftList.add(DraftModel.fromJson(v));
      });
    }
  }

  String toJson() {
    var dataString = "{ \"draft_list\" : [";
    if (this.draftList != null) {
      for (var i = 0; i < this.draftList.length; i++) {
        var single = draftList[i];
        dataString += "{";
        dataString += "\"_id\" : \"${single.id}\" ,";
        dataString += "\"category\" : \"${single.category}\" ,";
        dataString += "\"subject\" : \"${single.subject}\" ,";
        dataString += "\"description\" : \"${single.description}\" ,";
        dataString += "\"title\" : \"${single.title}\"";
        dataString += "}";
        if (!(i == (draftList.length - 1))) {
          dataString += ",";
        }
      }
    }
    dataString += "]}";
    return dataString;
  }
}
