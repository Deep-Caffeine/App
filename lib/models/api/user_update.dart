class UserUpdateResponse {
  final String? error;
  final bool? password;
  final bool? username;
  final bool? phone;
  final bool? birth;
  final int statusCode;

  UserUpdateResponse({
    this.error,
    this.password,
    this.username,
    this.phone,
    this.birth,
    required this.statusCode
  });

  factory UserUpdateResponse.fromJson(Map<String, dynamic> json, int code) {
    return UserUpdateResponse(
      error: json['error'],
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
    data['password'] = password;
    data['username'] = username;
    data['phone'] = phone;
    data['birth'] = birth;
    data['status_code'] = statusCode;
    return data;
  }
}