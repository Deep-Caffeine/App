class UserReadResponse {
  final String? email;
  final String? username;
  final String? phone;
  final String? birth;
  final String? profileUrl;
  final int? level;
  final List<String>? sns;
  final int statusCode;

  UserReadResponse({
    this.email,
    this.username,
    this.phone,
    this.birth,
    this.profileUrl,
    this.level,
    this.sns,
    required this.statusCode
  });

  factory UserReadResponse.fromJson(Map<String, dynamic> json, int code) {
    return UserReadResponse(
      email: json['email'],
      username: json['username'],
      phone: json['phone'],
      birth: json['birth'],
      profileUrl: json['profile_url'],
      level: json['level'],
      sns: json['sns'].cast<String>(),
      statusCode: code
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['email'] = email;
    data['username'] = username;
    data['phone'] = phone;
    data['birth'] = birth;
    data['profile_url'] = profileUrl;
    data['level'] = level;
    data['sns'] = sns;
    data['status_code'] = statusCode;
    return data;
  }
}