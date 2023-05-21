class UserAuthRefreshResponse {
  final String? accessToken;
  final int statusCode;

  UserAuthRefreshResponse({
    this.accessToken,
    required this.statusCode
  });

  factory UserAuthRefreshResponse.fromJson(Map<String, dynamic> json, int code) {
    return UserAuthRefreshResponse(
      accessToken: json['access_token'],
      statusCode: code
    );
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['access_token'] = accessToken;
    data['status_code'] = statusCode;
    return data;
  }
}