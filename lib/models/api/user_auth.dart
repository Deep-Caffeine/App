class UserAuthResponse {
  final String? accessToken;
  final String? refreshToken;
  final int statusCode;

  UserAuthResponse({
    this.accessToken,
    this.refreshToken,
    required this.statusCode
  });

  factory UserAuthResponse.fromJson(Map<String, dynamic> json, int code) {
    return UserAuthResponse(
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
      statusCode: code
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access_token'] = accessToken;
    data['refresh_token'] = refreshToken;
    data['status_code'] = statusCode;
    return data;
  }
}