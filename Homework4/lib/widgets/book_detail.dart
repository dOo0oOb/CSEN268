import 'package:flutter/material.dart';
import '../model/book.dart';
import 'book_image.dart';


class BookDetail extends StatelessWidget {
  const BookDetail({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 320,
              width: 240,
              child: BookImage(book: book),
            ),
            const SizedBox(height: 16.0),
            Text(book.title, style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: const Color.fromARGB(255, 118, 135, 143)),),
            const SizedBox(height: 16.0),
            Text(book.author, style: Theme.of(context).textTheme.titleLarge?.copyWith(color: const Color.fromARGB(255, 118, 135, 143)),),
            const SizedBox(height: 16.0),
            Text(book.description, style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: const Color.fromARGB(255, 118, 135, 143)),),
          ],
        ),
      ),
    );
  }
}