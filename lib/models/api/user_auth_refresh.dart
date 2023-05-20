class UserAuthRefreshResponse {
  final String accessToken;

  UserAuthRefreshResponse({
    required this.accessToken
  });

  factory UserAuthRefreshResponse.fromJson(Map<String, dynamic> json) {
    return UserAuthRefreshResponse(
      accessToken: json['access_token']
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access_token'] = accessToken;
    return data;
  }
}