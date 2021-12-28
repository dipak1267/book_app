class CitiesModel {
  final String? id;
  final String? name;
  final String? state;

  CitiesModel({
    this.id,
    this.name,
    this.state,
  });

  factory CitiesModel.fromJson(Map<String, dynamic> json) {
    return CitiesModel(
      id: json['id'],
      name: json['name'],
      state: json['state'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['state'] = this.state;
    return data;
  }

  @override
  String toString() => toJson().toString();
}

class StatesModel {
  final int? serialNo;
  final String? abb;
  final String? name;
  final String? state;

  StatesModel({
    this.abb,
    this.serialNo,
    this.name,
    this.state,
  });

  factory StatesModel.fromJson(Map<String, dynamic> json) {
    return StatesModel(
      abb: json['abb'],
      serialNo: json['slno'],
      name: json['name'],
      state: json['state'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slno'] = this.serialNo;
    data['abb'] = this.abb;
    data['name'] = this.name;
    data['state'] = this.state;
    return data;
  }

  @override
  String toString() => toJson().toString();
}
