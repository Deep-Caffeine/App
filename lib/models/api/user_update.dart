class UserUpdateResponse {
  final String error;
  final bool password;
  final bool username;
  final bool phone;
  final bool birth;

  UserUpdateResponse({
    required this.error,
    required this.password,
    required this.username,
    required this.phone,
    required this.birth
  });

  factory UserUpdateResponse.fromJson(Map<String, dynamic> json) {
    return UserUpdateResponse(
      error: json['error'],
      password: json['password'] ?? false,
      username: json['username'] ?? false,
      phone: json['phone'] ?? false,
      birth: json['birth'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['error'] = error;
    data['password'] = password;
    data['username'] = username;
    data['phone'] = phone;
    data['birth'] = birth;
    return data;
  }
}