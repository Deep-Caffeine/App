class UserCreateResponse {
  final String error;
  final bool email;
  final bool password;
  final bool username;
  final bool phone;
  final bool birth;

  UserCreateResponse({
    required this.error,
    required this.email,
    required this.password,
    required this.username,
    required this.phone,
    required this.birth
  });

  factory UserCreateResponse.fromJson(Map<String, dynamic> json) {
    return UserCreateResponse(
      error: json['error'],
      email: json['email'] ?? false,
      password: json['password'] ?? false,
      username: json['username'] ?? false,
      phone: json['phone'] ?? false,
      birth: json['birth'] ?? false,
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
    return data;
  }
}