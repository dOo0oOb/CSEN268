import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../model/book.dart';
import '../../../widgets/book_detail.dart';
import '../bloc/book_bloc.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.book});
  final Book book;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 243, 245),
          title: const Text('Book Detail'),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              context.read<BookBloc>().add(LoadBooks());
            },
          ),
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
      body: BookDetail(book: book),
    );
  }
}