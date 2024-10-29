import 'dart:convert';

import 'package:CSEN268_F24/services/mock.dart';

class Book {
  final String title;
  final String author;
  final String description;
  final String imageUrl;

  // Constructor with required fields
  Book({
    required this.title,
    required this.author,
    required this.description,
    required this.imageUrl});

  // copyWith method to create a new instance with optional changes
  Book copyWith({
    String? title,
    String? author,
    String? description,
    String? imageUrl,}) {
      return Book(
          title: title ?? this.title,
          author: author ?? this.author,
          description: description ?? this.description,
          imageUrl: imageUrl ?? this.imageUrl,
      );
    }

  // Convert Book object to Map<String, dynamic>
  Map<String, dynamic> toMap() {
    return <String, dynamic> {
      'title': title,
      'author': author,
      'description': description,
      'imageUrl': imageUrl,
    };
  }

  factory Book.fromMap(Map<String, dynamic> map) {
    return Book(
      title: map['tilte'] as String,
      author: map['author'] as String,
      description: map['description'] as String,
      imageUrl: map['imageUrl'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Book.fromJson(String source) =>
  Book.fromMap(json.decode(source) as Map<String, dynamic>);

  static Book createMockBook() {
    return Book(
      title: Mock.title(),
      author: Mock.author(),
      description: Mock.description(),
      imageUrl: Mock.imageUrl(),
    );
  }

  @override
  String toString() {
    return 'Book(title: $title, author: $author, description: $description, imageUrl: $imageUrl)';
  }

  @override
  bool operator ==(covariant Book other) {
    if(identical(this, other)) return true;

    return
      other.title == title &&
      other.author == author &&
      other.description == description &&
      other.imageUrl == imageUrl;
  }

  @override
  int get hashCode {
    return
      title.hashCode ^
      author.hashCode ^
      description.hashCode ^
      imageUrl.hashCode;
  }

}