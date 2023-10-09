class PostModel {
  final String id;

  PostModel({
    required this.id,
  });

  factory PostModel.fromJson(Map<String, dynamic> json) {
    final id = json['id'];

    return PostModel(
      id: id,
    );
  }
}
