class FormModel {
  String? name;
  String? email;
  String? userId;
  String? role;
  String? gender;
  String? dob;
  String? userimage;
  String? country;

  FormModel(
      {this.name,
      this.userId,
      this.role,
      this.gender,
      this.dob,
      this.email,
      this.userimage,
      this.country});

  FormModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    userId = json['userId'];
    role = json['role'];
    gender = json['gender'];
    dob = json['dob'];
    userimage = json['userimage'];
    country = json['country'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
      data['email'] = this.email;
    data['userId'] = this.userId;
    data['role'] = this.role;
    data['gender'] = this.gender;
    data['dob'] = this.dob;
    data['userimage'] = this.userimage;
    data['country'] = this.country;
    return data;
  }
}