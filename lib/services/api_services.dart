import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:leap/model/model.dart';

class ApiService {
  static Future<List<LeapModel>> fetchPosts() async {
    final response =
        await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((e) => LeapModel.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load posts');
    }
  }
}
