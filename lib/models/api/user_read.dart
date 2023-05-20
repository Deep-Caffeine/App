class UserReadResponse {
  final String email;
  final String username;
  final String phone;
  final String birth;
  final String profileUrl;
  final int level;
  final List<String> sns;

  UserReadResponse({
    required this.email,
    required this.username,
    required this.phone,
    required this.birth,
    required this.profileUrl,
    required this.level,
    required this.sns
  });

  factory UserReadResponse.fromJson(Map<String, dynamic> json) {
    return UserReadResponse(
      email: json['email'],
      username: json['username'],
      phone: json['phone'],
      birth: json['birth'],
      profileUrl: json['profile_url'],
      level: json['level'],
      sns: json['sns'].cast<String>()
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
    return data;
  }
}