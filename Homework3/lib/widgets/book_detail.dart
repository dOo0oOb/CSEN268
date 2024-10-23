import 'package:flutter/material.dart';
import '../model/book.dart';

class BookDetail extends StatelessWidget {
  const BookDetail({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Book Image
        Container(
          width: 100,
          height: 150,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(book.imageUrl),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.black12),
          ),
        ),
        SizedBox(height: 8),

        // Book Title
        Text(
          book.title,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 4),

        // Book Author
        Text(
          'by ${book.author}',
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
        SizedBox(height: 4),

        // Book Description
        Text(
          book.description,
          style: TextStyle(
            fontSize: 12,
            color: Colors.grey[700],
          ),
          maxLines: 3, // Limit description to 3 lines
          overflow: TextOverflow.ellipsis, // Add ellipsis if text overflows
        ),
      ],
    );
  }
}
