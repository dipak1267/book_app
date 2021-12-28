class UsersModel {
  final int? id;
  final String? firstName;
  final String? lastName;
  final String? email;
  final String? firebaseId;
  final int? phoneNumber;
  final String? gender;
  final int? countryCode;
  final String? fatherName;
  final String? dateOfBirth;
  final String? address;
  final String? city;
  final String? state;
  final String? profilePic;
  final List? roles;
  final bool? isPhoneVerified;

  UsersModel({
    this.id,
    this.firebaseId,
    this.firstName,
    this.lastName,
    this.email,
    this.phoneNumber,
    this.countryCode,
    this.gender,
    this.fatherName,
    this.dateOfBirth,
    this.address,
    this.city,
    this.state,
    this.profilePic,
    this.roles,
    this.isPhoneVerified,
  });

  factory UsersModel.fromJson(Map<String, dynamic> json) {
    return UsersModel(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      firebaseId: json['firebaseId'],
      phoneNumber: json['phoneNumber'],
      countryCode: json['countryCode'],
      email: json['email'],
      gender: json['gender'],
      fatherName: json['fatherName'],
      dateOfBirth: json['dateOfBirth'],
      address: json['address'],
      city: json['city'],
      state: json['state'],
      profilePic: json['profilePic'],
      roles: json['roles'],
      isPhoneVerified: json['isPhoneVerified'],
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['firebaseId'] = this.firebaseId;
    data['mobileNumber'] = this.phoneNumber;
    data['countryCode'] = this.countryCode;
    data['email'] = this.email;
    data['gender'] = this.gender;
    data['fatherName'] = this.fatherName;
    data['dateOfBirth'] = this.dateOfBirth;
    data['address'] = this.address;
    data['city'] = this.city;
    data['state'] = this.state;
    data['profilePic'] = this.profilePic;
    data['roles'] = this.roles;

    return data;
  }
}
