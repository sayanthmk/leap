import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:leap/model/model.dart';
import 'package:leap/services/api_services.dart';

class ConnectivityService {
  static Future<List<LeapModel>> getAllPosts() async {
    final connectivity = await Connectivity().checkConnectivity();

    if (connectivity != ConnectivityResult.none) {
      try {
        final posts = await ApiService.fetchPosts();
        return posts;
      } catch (e) {
        throw Exception('Failed to sync posts');
      }
    } else {
      return [];
    }
  }
}
