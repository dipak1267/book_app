class BookList {
  final int? id;
  final String? title;
  final String? subject;
  final String? language;
  final String? authorName;
  final String? isbnNo;
  final String? bookType;
  final String? condition;
  final String? priceRange;
  final Category? category;
  final Category? classStd;
  final Category? bookBoardName;

  BookList(
      {this.id,
      this.title,
      this.subject,
      this.language,
      this.authorName,
      this.isbnNo,
      this.bookType,
      this.condition,
      this.priceRange,
      this.category,
      this.classStd,
      this.bookBoardName});

  factory BookList.fromJson(Map<String, dynamic> json) {
    return BookList(
      id: json['id'],
      title: json['title'],
      authorName: json['authorName'],
      bookBoardName: json['bookBoardName'] != null
          ? new Category.fromJson(json['bookBoardName'])
          : null,
      bookType: json['bookType'],
      category: json['category'] != null
          ? new Category.fromJson(json['category'])
          : null,
      classStd: json['classStd'] != null
          ? new Category.fromJson(json['classStd'])
          : null,
      condition: json['condition'],
      isbnNo: json['isbnNo'],
      language: json['langugae'],
      priceRange: json['priceRange'],
      subject: json['subject'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['subject'] = this.subject;
    data['langugae'] = this.language;
    data['authorName'] = this.authorName;
    data['isbnNo'] = this.isbnNo;
    data['bookType'] = this.bookType;
    data['condition'] = this.condition;
    data['priceRange'] = this.priceRange;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    if (this.classStd != null) {
      data['classStd'] = this.classStd!.toJson();
    }
    if (this.bookBoardName != null) {
      data['bookBoardName'] = this.bookBoardName!.toJson();
    }
    return data;
  }
}

class Category {
  final int? id;

  Category({this.id});

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(id: json['id']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    return data;
  }
}
