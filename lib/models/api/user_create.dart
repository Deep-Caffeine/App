class UserCreateResponse {
  final String? error;
  final bool? email;
  final bool? password;
  final bool? username;
  final bool? phone;
  final bool? birth;
  final int statusCode;

  UserCreateResponse({
    this.error,
    this.email,
    this.password,
    this.username,
    this.phone,
    this.birth,
    required this.statusCode
  });

  factory UserCreateResponse.fromJson(Map<String, dynamic> json, int code) {
    return UserCreateResponse(
      error: json['error'],
      email: json['email'],
      password: json['password'],
      username: json['username'],
      phone: json['phone'],
      birth: json['birth'],
      statusCode: code
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    data['email'] = email;
    data['password'] = password;
    data['username'] = username;
    data['phone'] = phone;
    data['birth'] = birth;
    data['status_code'] = statusCode;
    return data;
  }
}