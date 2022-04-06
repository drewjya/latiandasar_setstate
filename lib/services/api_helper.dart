import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:latiandasar/models/users_model.dart';

class ApiHelper {
  static Future<List<UserModel>?> retrieveData() async {
    final uri = Uri.parse("https://api.github.com/users");
    final result = await http.get(uri);
    if (result.statusCode == 200) {
      List<UserModel> data = ((json.decode(result.body) as List<dynamic>)
              .cast<Map<String, dynamic>>())
          .map((e) => UserModel.fromMap(e))
          .toList();
      return data;
    }
    return null;
  }
}
