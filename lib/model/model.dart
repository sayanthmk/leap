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

  factory LeapModel.fromJson(Map<String, dynamic> json) {
    return LeapModel(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
    );
  }
}
