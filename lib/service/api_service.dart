import 'dart:math';
import 'dart:convert';
import 'package:logger/logger.dart';
import 'package:http/http.dart' as http;
import 'package:groccery_app/utils/constants.dart';

mixin ApiService {
  static Future<Map<String, dynamic>> get({String? slug}) async {
    Map<String, dynamic> result = {};
    try {
      var response = await http.get(Uri.parse('${ApiConstants.BASEURL}$slug'));
      if (response.statusCode == 200) {
        result = jsonDecode(response.body);

        return result;
      } else if (response.statusCode == 400) {}
    } catch (e) {
      logger.e('error is $e');
    }
    return result;
  }

  static Future<Map<String, dynamic>> post(
      {String? slug, Map<String, dynamic>? data}) async {
    Map<String, dynamic> result = {};
    try {
      var response = await http.post(
        Uri.parse(
          '${ApiConstants.BASEURL}$slug',
        ),
        body: jsonEncode(data),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
      );
      if (response.statusCode == 200) {
        return result = jsonDecode(response.body);
      }
      logger.i(response.body);
    } catch (e) {}
    return result;
  }
}
