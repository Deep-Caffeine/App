import 'package:http/http.dart' as http;
import 'package:deu_project/models/api/user_auth.dart';
import 'package:deu_project/models/api/user_auth_refresh.dart';
import 'package:deu_project/models/api/user_create.dart';
import 'package:deu_project/models/api/user_read.dart';
import 'package:deu_project/models/api/user_update.dart';
import 'dart:convert';

class APIUtils {
  // 맡은 부분 아래부터 함수를 만들어 작성해주세요!
  // COMMON (이부분은 건들지마세요)

  // CREATE

  // READ

  // UPDATE

  static const String url = "https://www.ideaconnect.online/user";
  static Future<UserUpdateResponse?> getUpdateInfo() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return UserUpdateResponse.fromJson(jsonDecode(response.body));
      } else {
        return null;
      }
    } catch (e) {
      return null;
    }
  }

  // DELETE
}
