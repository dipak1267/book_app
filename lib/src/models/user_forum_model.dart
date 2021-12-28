class UserForumModel {
  String? _title;
  String? _category;
  String? _postData;


  UserForumModel(this._title, this._category,  this._postData);

  String get title => _title!;

  String get category => _category!;

  String get postData => _postData!;

  set postData(String value) {
    _postData = value;
  }

  set category(String value) {
    _category = value;
  }

  set title(String value) {
    _title = value;
  }
}