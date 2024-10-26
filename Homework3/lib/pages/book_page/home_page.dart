import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/book_bloc.dart';
import 'views/book_list_view.dart';
import 'views/detail_view.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookBloc,BookState>(
      builder:(context, state) {
        switch (state){
          case BookSelected _:
            return DetailView(book: (state as BookSelected).book,);
          case BooksLoaded _:
            return BookListView(bookList: (state as BooksLoaded).books, isSortedByAuthor: (state as BooksLoaded).isSortedByAuthor,);
          case BooksInitial _:
          default:
            return Container();
        }
      },
    );
  }
}