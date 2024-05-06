class LoginModel {
  bool? isValid;
  String? token;

  LoginModel({this.isValid, this.token});

  LoginModel.fromJson(Map<String, dynamic> json) {
    isValid = json['IsValid'];
    token = json['Token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['IsValid'] = this.isValid;
    data['Token'] = this.token;
    return data;
  }
}