import 'dart:convert';

class News1 {
  final String id;
  final String title;
  final String imageURL;

  News1({required this.id, required this.title, required this.imageURL});

  News1 copyWith({
    required String? id,
    required String? title,
    required String? imageURL,
  }) {
    return News1(
      id: id ?? this.id,
      title: title ?? this.title,
      imageURL: imageURL ?? this.imageURL,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'imageURL': imageURL,
    };
  }

  factory News1.fromMap(map) {
    var data = map.data();
    return News1(
      id: map.id,
      title: data['title'],
      imageURL: data['imageURL'],
    );
  }

  String toJson() => json.encode(toMap());

  factory News1.fromJson(String source) => News1.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Category(id: $id, title: $title, imageURL: $imageURL)';
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is News1 &&
        o.id == id &&
        o.title == title &&
        o.imageURL == imageURL;
  }

  @override
  int get hashCode {
    return id.hashCode ^ title.hashCode ^ imageURL.hashCode;
  }
}
