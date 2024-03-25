import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({
    required String url,
  }) async {
    http.Response response = await http.get(
      Uri.parse(url),
    );
    //debugPrint(response.body);

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(
          "there is a problem with a status code ${response.statusCode}");
    }
  }
}
