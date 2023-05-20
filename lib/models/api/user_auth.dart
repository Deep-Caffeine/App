class UserAuthResponse {
  final String accessToken;
  final String refreshToken;

  UserAuthResponse({
    required this.accessToken,
    required this.refreshToken
  });

  factory UserAuthResponse.fromJson(Map<String, dynamic> json) {
    return UserAuthResponse(
      accessToken: json['access_token'],
      refreshToken: json['refresh_token']
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access_token'] = accessToken;
    data['refresh_token'] = refreshToken;
    return data;
  }
}