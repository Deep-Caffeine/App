import 'dart:convert';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:http/http.dart' as http;
import '/models\\api/user_create.dart';
import '/models\\api/user_update.dart';
import '/models\\api/user_read.dart';

class APIUtils {
  // 맡은 부분 아래부터 함수를 만들어 작성해주세요!
  // COMMON (이부분은 건들지마세요)

  // CREATE

  // READ

  // UPDATE

  static const String url = "https://www.ideaconnect.online/user";
  static Future<UserCreateResponse?> getCreateInfo() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return UserCreateResponse.fromJson(jsonDecode(response.body));
      } else {
        Fluttertoast.showToast(msg: 'Error Occurred. Create Response');
        return null;
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      return null;
    }
  }

  static Future<UserReadResponse?> getReadInfo() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return UserReadResponse.fromJson(jsonDecode(response.body));
      } else {
        Fluttertoast.showToast(msg: 'Error Occurred. Read Response');
        return null;
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      return null;
    }
  }

  static Future<UserUpdateResponse?> getUpdateInfo() async {
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return UserUpdateResponse.fromJson(jsonDecode(response.body));
      } else {
        Fluttertoast.showToast(msg: 'Error Occurred. Update Response');
        return null;
      }
    } catch (e) {
      Fluttertoast.showToast(msg: e.toString());
      return null;
    }
  }

  // DELETE
}
