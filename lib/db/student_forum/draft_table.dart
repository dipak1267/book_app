final String tableDraft = 'drafts';

class DraftTableFields {
  static final List<String> values = [
    id,
    category,
    subject,
    description,
    title
  ];

  static final String id = '_id';
  static final String category = 'category';
  static final String subject = 'subject';
  static final String description = 'description';
  static final String title = 'title';
}

class DraftModel {
  String? id;
  final String category;
  final String subject;
  final String description;
  final String title;

  DraftModel({
    this.id,
    required this.category,
    required this.subject,
    required this.description,
    required this.title,
  });

  static fromJson(Map<String, Object?> json) => DraftModel(
        id: json[DraftTableFields.id] as String?,
        category: json[DraftTableFields.category] as String,
        subject: json[DraftTableFields.subject] as String,
        description: json[DraftTableFields.description] as String,
        title: json[DraftTableFields.title] as String,
      );

  Map<String, Object?> toJson() => {
        DraftTableFields.id: id,
        DraftTableFields.category: category,
        DraftTableFields.subject: subject,
        DraftTableFields.description: description,
        DraftTableFields.title: title,
      };
}
