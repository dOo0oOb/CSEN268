
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/book.dart';
import '../../../widgets/book_image.dart';
import '../bloc/book_bloc.dart';

class BookListView extends StatelessWidget {
  const BookListView({super.key, required this.bookList, required this.isSortedByAuthor});
  final List<Book> bookList;
  final bool isSortedByAuthor;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 243, 245),
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {},
          ),
          title: const Text('Book Club App'),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: CircleAvatar(
                radius: 25,
                backgroundColor: Colors.transparent,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  child: const Icon(
                    Icons.person,
                    size: 25,
                    color: Colors.black,
                  ),
                ),
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Sort by',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(
                  width: 16.0),
                OutlinedButton(
                  onPressed: () {
                    context.read<BookBloc>().add(SortByAuthor());
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: isSortedByAuthor
                      ? const Color.fromARGB(255, 209, 209, 209)
                      : null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Author'),
                ),
                const SizedBox(width: 10),
                OutlinedButton(
                  onPressed: () {
                    context.read<BookBloc>().add(SortByTitle());
                  },
                  style: OutlinedButton.styleFrom(
                    backgroundColor: !isSortedByAuthor
                      ? const Color.fromARGB(255, 209, 209, 209)
                      : null,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: const Text('Title'),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Text(
              'Books',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
          const SizedBox(height: 16.0),

          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: bookList.length,
              itemBuilder: (context, index) {
                final book = bookList[index];
                return GestureDetector(
                  onTap: () {
                    context.read<BookBloc>().add(SelectBook(book));
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: index == 0 ? 10 : 0),
                    child: BookImage(book: book),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}