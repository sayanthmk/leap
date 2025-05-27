import 'package:flutter/material.dart';
import 'package:leap/model/model.dart';
import 'package:leap/services/connectivity.dart';

class PostProvider with ChangeNotifier {
  final List<LeapModel> _posts = [];
  bool _isLoading = true;

  List<LeapModel> get posts => _posts;
  bool get isLoading => _isLoading;

  Future<void> loadPosts() async {
    _isLoading = true;
    notifyListeners();

    try {
      final fetchedPosts = await ConnectivityService.getAllPosts();
      _posts.clear();
      _posts.addAll(fetchedPosts);
    } catch (e) {
      debugPrint('Error loading posts: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> refreshPosts() async {
    await loadPosts();
  }
}
