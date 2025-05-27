import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:leap/model/model.dart';

class ApiService {
  static Future<List<LeapModel>> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    log(response.statusCode.toString());
    switch (response.statusCode) {
      case 200:
        List data = jsonDecode(response.body);
        return data.map((e) => LeapModel.fromJson(e)).toList();
      case 400:
        throw Exception('Bad request');
      case 401:
        throw Exception('Unauthorized request');
      case 403:
        throw Exception('Access forbidden');
      case 404:
        throw Exception('Posts not found');
      case 500:
        throw Exception('Internal server error');
      default:
        throw Exception('Failed to load posts: ${response.statusCode}');
    }
  }
}
