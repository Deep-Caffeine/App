import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:deu_project/models/api/user_create.dart';
import 'package:deu_project/models/api/user_read.dart';
import 'package:deu_project/models/api/user_update.dart';

final baseUrl = dotenv.env['API_BASE_HTTP']!;

class UserAPIUtil {
  final url = Uri.parse('$baseUrl/user');
  UserAPIUtil();

  // CREATE
  Future<UserCreateResponse> createUser(Map<String, dynamic> data) async {
    final response = await http.post(
      url,
      headers: <String, String> {
        'Content-Type': 'application/json'
      },
      body: jsonEncode(data)
    );
    final responseBody = response.body == '' ? '{}' : response.body;
    return UserCreateResponse.fromJson(jsonDecode(responseBody), response.statusCode);
  }

  // READ
  Future<UserReadResponse> readUser(String jwt) async {
    final response = await http.get(
      url,
      headers: <String, String> {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt'
      }
    );
    final responseBody = response.body == '' ? '{}' : response.body;
    return UserReadResponse.fromJson(jsonDecode(responseBody), response.statusCode);
  }

  // UPDATE
  Future<UserUpdateResponse> updateUser(String jwt, Map<String, dynamic> data) async {
    final response = await http.put(
      url,
      headers: <String, String> {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt'
      },
      body: jsonEncode(data)
    );
    final responseBody = response.body == '' ? '{}' : response.body;
    return UserUpdateResponse.fromJson(jsonDecode(responseBody), response.statusCode);
  }
  
  // DELETE
  Future<int> deleteUser(String jwt) async {
    final response = await http.delete(
      url,
      headers: <String, String> {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $jwt'
      },
    );
    return response.statusCode;
  }
}
