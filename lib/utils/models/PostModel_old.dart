class PostModelOld {
  final String id;
  final String name;
  String imageUrl;

  PostModelOld({
    required this.id,
    required this.name,
    required this.imageUrl,
  });

  factory PostModelOld.fromJson(Map<String, dynamic> json) {
    final id = json['id'];
    final name = json['name'];
    final imageUrl = 'https://drive.google.com/uc?export=view&id=${id}';

    return PostModelOld(
      id: id,
      name: name,
      imageUrl: imageUrl,
    );
  }
}
