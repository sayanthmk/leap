class LeapModel {
  final int userId;
  final int id;
  final String title;
  final String body;

  LeapModel({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
  });

  // Factory constructor to create a Post from JSON
  factory LeapModel.fromJson(Map<String, dynamic> json) {
    return LeapModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }

  // Convert a Post object to JSON
  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'body': body,
    };
  }
}
