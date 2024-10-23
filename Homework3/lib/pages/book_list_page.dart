import '../../../widgets/book_image.dart';
import 'package:flutter/material.dart';

import '../model/book.dart';
import '../widgets/book_detail.dart';

class BookListPage extends StatelessWidget {
  const BookListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Book> bookList = List.generate(20, (index) {
      return Book.createMockBook();
    });

    print(bookList);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 20 : 0),
                    child: BookDetail(book: bookList[index]),
                  );
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: bookList.length,
              ),
            ),
            Container(
              height: 700,
              child: ListView.separated(
                // scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return BookImage(book: bookList[index]);
                },
                separatorBuilder: (context, index) {
                  return Divider();
                },
                itemCount: bookList.length,
              ),
            ),
            Container(height: 300, color: Colors.red, width: double.infinity),
          ],
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Book List"),
      ),
    );
  }
}
